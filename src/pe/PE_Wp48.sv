module PE_Wp48 (
`ifdef USE_POWER_PINS
    inout VPWR,
    inout VGND,
`endif
    input  logic clk,
    input  logic rst_n,

    input  logic signed [7:0] a_in,
    input  logic signed [31:0]  partial_sum_in,

    output logic signed [7:0] a_out,
    output logic signed [31:0]  partial_sum_out
);

    localparam logic signed [7:0] WEIGHT = 8'(signed'(48));

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
