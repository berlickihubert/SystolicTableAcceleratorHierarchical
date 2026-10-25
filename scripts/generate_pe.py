import json
import os

from common import ACC_WIDTH, DATA_WIDTH, PROJECT, macro_name, unique_values

SV_OUT_DIR = f"{PROJECT}/src/pe"
CONFIGS_OUT_DIR = f"{PROJECT}/flow/pe_configs"


def build_module_src(name, value):
    return f"""\
            module {name} (
            `ifdef USE_POWER_PINS
                inout VPWR,
                inout VGND,
            `endif
                input  logic clk,
                input  logic rst_n,

                input  logic signed [{DATA_WIDTH - 1}:0] a_in,
                input  logic signed [{ACC_WIDTH - 1}:0]  partial_sum_in,

                output logic signed [{DATA_WIDTH - 1}:0] a_out,
                output logic signed [{ACC_WIDTH - 1}:0]  partial_sum_out
            );

                localparam logic signed [{DATA_WIDTH - 1}:0] WEIGHT = {DATA_WIDTH}'(signed'({value}));

                always_ff @(posedge clk or negedge rst_n) begin
                    if (!rst_n) begin
                        a_out           <= '0;
                        partial_sum_out <= '0;
                    end
                    else begin
                        a_out           <= a_in;
                        partial_sum_out <= partial_sum_in + (a_in * WEIGHT);
                    end
                end

            endmodule
            """

# https://openlane.readthedocs.io/en/latest/tutorials/digital_guide.html
# bez pinow VPWR/VGND w blackboxie top-level nie moze podlaczyc zasilania do makr
# i flow konczyl sie bledem "port VPWR does not exist"
# The submacros are by default logically connected to VPWR/VGND power domain.
def build_blackbox(name):
    return f"""\
            (* blackbox *)
            module {name} (
            `ifdef USE_POWER_PINS
                inout VPWR,
                inout VGND,
            `endif
                input  logic clk,
                input  logic rst_n,

                input  logic signed [{DATA_WIDTH - 1}:0] a_in,
                input  logic signed [{ACC_WIDTH - 1}:0]  partial_sum_in,

                output logic signed [{DATA_WIDTH - 1}:0] a_out,
                output logic signed [{ACC_WIDTH - 1}:0]  partial_sum_out
            );
            endmodule
            """


# Orientacje z ktorej stroyn wejscia i wyjscia makr
PIN_ORDER_CFG = """#W
                a_in\\[.*\\]
                clk
                rst_n
                #E
                a_out\\[.*\\]
                #S
                partial_sum_in\\[.*\\]
                #N
                partial_sum_out\\[.*\\]
                """
                
PIN_ORDER_NAME = "pe_pin_order.cfg"


def build_macro_config(name):
    return {
        "DESIGN_NAME": name,
        "VERILOG_FILES": f"dir::../../src/pe/{name}.sv",
        "CLOCK_PORT": "clk",
        "CLOCK_PERIOD": 10,
        "FP_SIZING": "absolute",
        "DIE_AREA": [0, 0, 130, 130],
        "FP_PIN_ORDER_CFG": f"dir::{PIN_ORDER_NAME}",
        "PL_TARGET_DENSITY": 0.85,
        "PDK": "sky130A",
        "STD_CELL_LIBRARY": "sky130_fd_sc_hd",
        "VERILOG_POWER_DEFINE": "USE_POWER_PINS",
    }


def main():
    os.makedirs(SV_OUT_DIR, exist_ok=True)
    os.makedirs(CONFIGS_OUT_DIR, exist_ok=True)


    for file_name in os.listdir(CONFIGS_OUT_DIR):
        if file_name.startswith("pe_PE_W") and file_name.endswith(".json"):
            os.remove(os.path.join(CONFIGS_OUT_DIR, file_name))

    with open(os.path.join(CONFIGS_OUT_DIR, PIN_ORDER_NAME), "w") as f:
        f.write(PIN_ORDER_CFG)

    values = unique_values()
    print(f"liczba unikalnych wag: {len(values)}")

    for value in values:
        name = macro_name(value)

        sv_src = build_module_src(name, value)
        sv_path = os.path.join(SV_OUT_DIR, f"{name}.sv")
        with open(sv_path, "w") as f:
            f.write(sv_src)

        stub_path = os.path.join(SV_OUT_DIR, f"{name}_blackbox.sv")
        with open(stub_path, "w") as f:
            f.write(build_blackbox(name))

        config = build_macro_config(name)
        config_path = os.path.join(CONFIGS_OUT_DIR, f"pe_{name}.json")
        with open(config_path, "w") as f:
            json.dump(config, f, indent=4)

if __name__ == "__main__":
    main()
