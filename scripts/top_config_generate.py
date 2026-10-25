import json
import os

from common import COLS, MATRIX, PROJECT, ROWS, macro_name, unique_values

FLOW_DIR = f"{PROJECT}/flow"
CONFIG_PATH = f"{FLOW_DIR}/top_level_hierarchical.json"

# musi sie zgadzac z wartosciami w generate_pe.py w configu
MACRO_W = 130.0
MACRO_H = 130.0
MARGIN = 20.0
GAP = 60.0

CORNER = "tt_025C_1v80"


# clk delay after CTC (z skew.min.rpt, "source latency") bez tego jest duzo bledow naruszen
CLK_LATENCY_NS = {16: 3.2, 32: 6.2}
SDC_NAME = "top_io.sdc"

CLOCK_PORT = "clk"
RESET_PORT = "rst_n"
CLOCK_PERIOD_NS = 10
IO_DELAY_PCT = 20


def create_pe_macros():
    # https://librelane.readthedocs.io/en/stable/usage/using_macros.html

    macros = {}
    for value in unique_values():
        name = macro_name(value)
        macros[name] = {
            "gds": [f"dir::pe_configs/runs/{name}/final/gds/{name}.gds"],
            "lef": [f"dir::pe_configs/runs/{name}/final/lef/{name}.lef"],
            "lib": {"*": [f"dir::pe_configs/runs/{name}/final/lib/nom_{CORNER}/{name}__nom_{CORNER}.lib"]},
            "pnl": [f"dir::pe_configs/runs/{name}/final/pnl/{name}.pnl.v"],
            "instances": {},
        }
    for r in range(ROWS):
        for c in range(COLS):
            macros[macro_name(MATRIX[r][c])]["instances"][f"systolic_array.pe_{r}_{c}"] = {
                "location": [MARGIN + c * (MACRO_W + GAP), MARGIN + r * (MACRO_H + GAP)],
                "orientation": "N",
            }
    return macros


def main():
    os.makedirs(FLOW_DIR, exist_ok=True)

    die_w = MARGIN * 2 + COLS * MACRO_W + (COLS - 1) * GAP
    die_h = MARGIN * 2 + ROWS * MACRO_H + (ROWS - 1) * GAP

    macros = create_pe_macros()
    verilog_files = [
        "dir::../src/AcceleratorTop.sv",
        "dir::../src/SystolicTableHierarchical.sv",
    ] + [f"dir::../src/pe/{macro_name(value)}_blackbox.sv" for value in unique_values()]

    io_delay = CLOCK_PERIOD_NS * IO_DELAY_PCT / 100
    input_delay = round(io_delay + CLK_LATENCY_NS[ROWS], 3)
    output_delay = round(io_delay - CLK_LATENCY_NS[ROWS], 3)

    # /home/hubert/OpenROAD/src/sta/doc/OpenSTA.pdf
    sdc = f"""
    # Wg to https://openlane2.readthedocs.io/en/latest/reference/common_flow_vars.html jest FALLBACK_SDC_FILE czyli defaultowy
    source $::env(SCRIPTS_DIR)/base.sdc

    set_input_delay {input_delay} -clock {CLOCK_PORT} $all_inputs_wo_clk_rst
    set_output_delay {output_delay} -clock {CLOCK_PORT} [all_outputs]
    set_multicycle_path 2 -setup -from [get_ports {RESET_PORT}]
    set_multicycle_path 1 -hold -from [get_ports {RESET_PORT}]
    """

    config = f"""{{
    "DESIGN_NAME": "AcceleratorTop",
    "VERILOG_FILES": {json.dumps(verilog_files, indent=4)},
    "CLOCK_PORT": "{CLOCK_PORT}",
    "CLOCK_PERIOD": {CLOCK_PERIOD_NS},
    "IO_DELAY_CONSTRAINT": {IO_DELAY_PCT},
    "FP_SIZING": "absolute",
    "DIE_AREA": [0, 0, {die_w}, {die_h}],
    "PL_TARGET_DENSITY": 0.5,
    "PDK": "sky130A",
    "STD_CELL_LIBRARY": "sky130_fd_sc_hd",
    "PDN_MACRO_CONNECTIONS": [".*pe_.* VPWR VGND VPWR VGND"],
    "VERILOG_POWER_DEFINE": "USE_POWER_PINS",
    "FP_PDN_VPITCH": 60,
    "FP_PDN_HPITCH": 60,
    "FP_TAPCELL_DIST": 7,
    "PL_MACRO_HALO": "10 10",
    "FP_MACRO_HORIZONTAL_HALO": 10,
    "FP_MACRO_VERTICAL_HALO": 10,
    "LVS_INCLUDE_MARCO_NETLISTS": true,
    "GRT_ALLOW_CONGESTION": true,
    "ERROR_ON_MAGIC_DRC": false,
    "ERROR_ON_KLAYOUT_DRC": false,
    "ERROR_ON_LVS_ERROR": false,
    "ERROR_ON_PDN_VIOLATIONS": false,
    "MACROS": {json.dumps(macros, indent=4)},
    "PNR_SDC_FILE": "dir::{SDC_NAME}",
    "SIGNOFF_SDC_FILE": "dir::{SDC_NAME}"
}}
"""

    with open(f"{FLOW_DIR}/{SDC_NAME}", "w") as f:
        f.write(sdc)

    with open(CONFIG_PATH, "w") as f:
        f.write(config)
    print(f"written {CONFIG_PATH}")
    print(f"die area: {die_w} x {die_h} um")

if __name__ == "__main__":
    main()