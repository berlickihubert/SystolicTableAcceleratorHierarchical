import os

from common import ACC_WIDTH, COLS, DATA_WIDTH, MATRIX, PROJECT, ROWS, macro_name

SV_OUT_DIR = f"{PROJECT}/src"


def create_systolic_table_module():
    a_word = ROWS * DATA_WIDTH
    psum_word = COLS * ACC_WIDTH

    a_wires_part = ""
    for r in range(ROWS):
        a_wires_part += f"  assign a_wire[{r}][0] = a_in_flat[{(r + 1) * DATA_WIDTH - 1}:{r * DATA_WIDTH}];\n"
    a_wires_part = a_wires_part.rstrip()

    psum_wires_part = ""
    for c in range(COLS):
        psum_wires_part += f"   assign psum_wire[0][{c}] = partial_sum_in_flat[{(c +1) * ACC_WIDTH - 1}:{c * ACC_WIDTH}];\n"
        psum_wires_part += f"   assign partial_sum_out_flat[{(c + 1) * ACC_WIDTH - 1}:{c * ACC_WIDTH}] = psum_wire[{ROWS}][{c}];\n"
    psum_wires_part = psum_wires_part.rstrip()

    pe_instances_part = ""
    for r in range(ROWS):
        for c in range(COLS):
            pe_instances_part += f"""\
    {macro_name(MATRIX[r][c])} pe_{r}_{c} (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[{r}][{c}]), .partial_sum_in(psum_wire[{r}][{c}]), .a_out(a_wire[{r}][{c + 1}]), .partial_sum_out(psum_wire[{r + 1}][{c}]));
    """
    #print(pe_instances_part)

    #usuwanie bialych znakow na koncu
    pe_instances_part = pe_instances_part.rstrip()

    return f"""\
            module SystolicTableHierarchical (
            `ifdef USE_POWER_PINS
                inout VPWR,
                inout VGND,
            `endif
                input  logic clk,
                input  logic rst_n,

                input  logic signed [{a_word - 1}:0] a_in_flat,
                input  logic signed [{psum_word - 1}:0] partial_sum_in_flat,

                output logic signed [{psum_word - 1}:0] partial_sum_out_flat
            );

                logic signed [{DATA_WIDTH - 1}:0] a_wire [{ROWS}][{COLS + 1}];
                logic signed [{ACC_WIDTH - 1}:0] psum_wire [{ROWS + 1}][{COLS}];

            {a_wires_part}
            {psum_wires_part}

            {pe_instances_part}

            endmodule
            """


def main():
    os.makedirs(SV_OUT_DIR, exist_ok=True)

    with open(f"{SV_OUT_DIR}/SystolicTableHierarchical.sv", "w") as f:
        f.write(create_systolic_table_module())

    print(f"written {SV_OUT_DIR}/SystolicTableHierarchical.sv")


if __name__ == "__main__":
    main()
