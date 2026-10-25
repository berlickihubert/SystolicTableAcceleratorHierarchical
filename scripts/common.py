import os

ROWS = int(os.environ.get("HIER_ROWS", 4))
COLS = int(os.environ.get("HIER_COLS", 4))
DATA_WIDTH = 8
ACC_WIDTH = 32

ROOT = "/home/hubert/Desktop/studia/praca-inzynierska/silicon-bielik"
PROJECT = f"{ROOT}/accelerators/SystolicTableAcceleratorHierarchical"
MODEL_PATH = f"{ROOT}/models/Bielik-1.5B-v3/model.safetensors"


def quantize_int8(w):
    scale = w.abs().max().item() / 127.0
    w_q = (w / scale).round().clamp(-127, 127)
    return w_q.to(int).tolist(), scale


def load_matrix():
    import torch
    from safetensors import safe_open

    with safe_open(MODEL_PATH, framework="pt", device="cpu") as f:
        weights = f.get_tensor("model.layers.0.self_attn.q_proj.weight").float()
    weights = weights[:ROWS, :COLS]
    weights_int8, _scale = quantize_int8(weights)
    return weights_int8


MATRIX = load_matrix()


def macro_name(value):
    sign = "n" if value < 0 else "p"
    return f"PE_W{sign}{abs(value)}"


def unique_values():
    return sorted({v for row in MATRIX for v in row})
