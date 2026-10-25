source $::env(SCRIPTS_DIR)/base.sdc

set_input_delay 8.2 -clock clk $all_inputs_wo_clk_rst
set_output_delay -4.2 -clock clk [all_outputs]
set_multicycle_path 2 -setup -from [get_ports rst_n]
set_multicycle_path 1 -hold -from [get_ports rst_n]
