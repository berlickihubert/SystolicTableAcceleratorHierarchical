#!/usr/bin/env bash
set -e

# Wywala mi sie na ostatnim etapie nie wiem czemu
STAGE="53-openroad-rcx"
CORNER="tt_025C_1v80"

ROOT="/home/hubert/Desktop/studia/praca-inzynierska/silicon-bielik"
PROJECT="$ROOT/accelerators/AcceleratorHierarchicalHardcoded"
OPENLANE_SRC="$ROOT/flow/openlane2-src"
RUN_DIR="$PROJECT/flow/configs/runs/TOP_HIERARCHICAL"
MACRO_RUNS="$PROJECT/flow/configs/runs"

ODB=$(find "$RUN_DIR" -path "*51-openroad-fillinsertion*" -iname "*.odb" | head -1)
SDC=$(find "$RUN_DIR" -path "*51-openroad-fillinsertion*" -iname "*.sdc" | head -1)
SPEF=$(find "$RUN_DIR/$STAGE/nom" -iname "*.nom.spef" | head -1)
STDCELL_LIB=$(find /home/hubert/.volare -path "*sky130A*sky130_fd_sc_hd*lib/sky130_fd_sc_hd__${CORNER}.lib" | head -1)

SCRIPT=$(mktemp --suffix=.tcl)
trap 'rm -f "$SCRIPT"' EXIT

{
    echo "read_liberty \"$STDCELL_LIB\""
    for macro_dir in "$MACRO_RUNS"/PE_W*/final/lib/nom_${CORNER}; do
        lib_file=$(find "$macro_dir" -iname "*.lib" | head -1)
        if [ -n "$lib_file" ]; then
            echo "read_liberty \"$lib_file\""
        fi
    done
    echo "read_db \"$ODB\""
    echo "read_sdc \"$SDC\""
    echo "read_spef \"$SPEF\""
    echo "puts \"gotowe - current_design: [current_design], corner: $CORNER, etap: $STAGE\""
    echo 'foreach c [all_clocks] { puts "zegar: [get_name $c]" }'
    echo "report_checks -path_delay max -digits 3"
    echo "report_design_area"
    echo "report_power"
} > "$SCRIPT"

export PATH="/nix/var/nix/profiles/default/bin:$PATH"
nix develop --experimental-features "nix-command flakes" --accept-flake-config "$OPENLANE_SRC" \
    -c openroad -gui "$SCRIPT"
