#!/usr/bin/env bash
set -e

export HIER_ROWS=32
export HIER_COLS=32


REBUILD_MACROS=false
TOP_RESUME_FROM=""

# Zjada ram
TOP_SKIP_STEPS=(KLayout.XOR Checker.XOR)

# Bledy ktorych nie rozumiem
TOP_SKIP_STEPS+=(OpenROAD.IRDropReport)

# Bledy makr z jakiegos powodu
TOP_SKIP_STEPS+=(Odb.CheckDesignAntennaProperties Magic.WriteLEF Magic.DRC Checker.MagicDRC Magic.SpiceExtraction Checker.IllegalOverlap Netgen.LVS Checker.LVS)

#Przekracza mi na 16x16 i 32x32 limit RAMU
TOP_SKIP_STEPS+=(KLayout.DRC Checker.KLayoutDRC)
TOP_SKIP_STEPS+=(Checker.SetupViolations Checker.HoldViolations Checker.MaxSlewViolations Checker.MaxCapViolations)

ROOT="/home/hubert/Desktop/studia/praca-inzynierska/silicon-bielik"
PROJECT="$ROOT/accelerators/SystolicTableAcceleratorHierarchical"
OPENLANE_SRC="$ROOT/flow/openlane2-src"
SCRIPTS="$PROJECT/scripts"
HERE="$PROJECT/flow"
CONFIGS="$HERE/configs"
TOP_CONFIG="$CONFIGS/top_level_hierarchical.json"
TOP_RUN_TAG="TOP_HIERARCHICAL"

export PATH="/nix/var/nix/profiles/default/bin:$PATH"

if [ ! -d "$OPENLANE_SRC" ]; then
    echo "klonowanie OpenLane 2 bo nie ma"
    git clone --depth 1 https://github.com/efabless/openlane2 "$OPENLANE_SRC"
fi

"$ROOT/.venv/bin/python" "$SCRIPTS/generate_pe.py"
"$ROOT/.venv/bin/python" "$SCRIPTS/top_module_generate.py"
"$ROOT/.venv/bin/python" "$SCRIPTS/top_config_generate.py"

FAILED=()
for config in "$CONFIGS"/pe_PE_W*.json; do
    name=$(basename "$config" .json | sed 's/^pe_//')

    if [ "$REBUILD_MACROS" = false ] && [ -f "$CONFIGS/runs/$name/final/gds/$name.gds" ]; then
        echo "$name juz zbudowane, pomijam (REBUILD_MACROS=false)"
        continue
    fi

    if nix develop --experimental-features "nix-command flakes" --accept-flake-config "$OPENLANE_SRC" \
        -c openlane "$config" --run-tag "$name" --overwrite; then
        echo "$name OK"
    else
        echo "$name FAILED"
        FAILED+=("$name")
    fi
done

if [ ${#FAILED[@]} -gt 0 ]; then
    echo "makra NIEUDANE: ${FAILED[*]}"
    exit 1
fi
echo "wszystkie makra zbudowane"

TOP_ARGS=()
for step in "${TOP_SKIP_STEPS[@]}"; do
    TOP_ARGS+=(--skip "$step")
done

if [ -n "$TOP_RESUME_FROM" ]; then
    echo "wznawiam top-level od kroku $TOP_RESUME_FROM"
    TOP_ARGS+=(--from "$TOP_RESUME_FROM")
else
    TOP_ARGS+=(--overwrite)
fi

nix develop --experimental-features "nix-command flakes" --accept-flake-config "$OPENLANE_SRC" \
    -c openlane "$TOP_CONFIG" --run-tag "$TOP_RUN_TAG" "${TOP_ARGS[@]}"

RUN_DIR="$CONFIGS/runs/$TOP_RUN_TAG"
echo
echo "run dir: $RUN_DIR"
echo "metrics: $RUN_DIR/final/metrics.json"
