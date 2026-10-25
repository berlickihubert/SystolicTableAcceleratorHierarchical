module SystolicTableHierarchical (
`ifdef USE_POWER_PINS
    inout VPWR,
    inout VGND,
`endif
    input  logic clk,
    input  logic rst_n,

    input  logic signed [255:0] a_in_flat,
    input  logic signed [1023:0] partial_sum_in_flat,

    output logic signed [1023:0] partial_sum_out_flat
);

    logic signed [7:0] a_wire [32][33];
    logic signed [31:0] psum_wire [33][32];

    assign a_wire[0][0] = a_in_flat[7:0];
    assign a_wire[1][0] = a_in_flat[15:8];
    assign a_wire[2][0] = a_in_flat[23:16];
    assign a_wire[3][0] = a_in_flat[31:24];
    assign a_wire[4][0] = a_in_flat[39:32];
    assign a_wire[5][0] = a_in_flat[47:40];
    assign a_wire[6][0] = a_in_flat[55:48];
    assign a_wire[7][0] = a_in_flat[63:56];
    assign a_wire[8][0] = a_in_flat[71:64];
    assign a_wire[9][0] = a_in_flat[79:72];
    assign a_wire[10][0] = a_in_flat[87:80];
    assign a_wire[11][0] = a_in_flat[95:88];
    assign a_wire[12][0] = a_in_flat[103:96];
    assign a_wire[13][0] = a_in_flat[111:104];
    assign a_wire[14][0] = a_in_flat[119:112];
    assign a_wire[15][0] = a_in_flat[127:120];
    assign a_wire[16][0] = a_in_flat[135:128];
    assign a_wire[17][0] = a_in_flat[143:136];
    assign a_wire[18][0] = a_in_flat[151:144];
    assign a_wire[19][0] = a_in_flat[159:152];
    assign a_wire[20][0] = a_in_flat[167:160];
    assign a_wire[21][0] = a_in_flat[175:168];
    assign a_wire[22][0] = a_in_flat[183:176];
    assign a_wire[23][0] = a_in_flat[191:184];
    assign a_wire[24][0] = a_in_flat[199:192];
    assign a_wire[25][0] = a_in_flat[207:200];
    assign a_wire[26][0] = a_in_flat[215:208];
    assign a_wire[27][0] = a_in_flat[223:216];
    assign a_wire[28][0] = a_in_flat[231:224];
    assign a_wire[29][0] = a_in_flat[239:232];
    assign a_wire[30][0] = a_in_flat[247:240];
    assign a_wire[31][0] = a_in_flat[255:248];
    assign psum_wire[0][0] = partial_sum_in_flat[31:0];
    assign partial_sum_out_flat[31:0] = psum_wire[32][0];
    assign psum_wire[0][1] = partial_sum_in_flat[63:32];
    assign partial_sum_out_flat[63:32] = psum_wire[32][1];
    assign psum_wire[0][2] = partial_sum_in_flat[95:64];
    assign partial_sum_out_flat[95:64] = psum_wire[32][2];
    assign psum_wire[0][3] = partial_sum_in_flat[127:96];
    assign partial_sum_out_flat[127:96] = psum_wire[32][3];
    assign psum_wire[0][4] = partial_sum_in_flat[159:128];
    assign partial_sum_out_flat[159:128] = psum_wire[32][4];
    assign psum_wire[0][5] = partial_sum_in_flat[191:160];
    assign partial_sum_out_flat[191:160] = psum_wire[32][5];
    assign psum_wire[0][6] = partial_sum_in_flat[223:192];
    assign partial_sum_out_flat[223:192] = psum_wire[32][6];
    assign psum_wire[0][7] = partial_sum_in_flat[255:224];
    assign partial_sum_out_flat[255:224] = psum_wire[32][7];
    assign psum_wire[0][8] = partial_sum_in_flat[287:256];
    assign partial_sum_out_flat[287:256] = psum_wire[32][8];
    assign psum_wire[0][9] = partial_sum_in_flat[319:288];
    assign partial_sum_out_flat[319:288] = psum_wire[32][9];
    assign psum_wire[0][10] = partial_sum_in_flat[351:320];
    assign partial_sum_out_flat[351:320] = psum_wire[32][10];
    assign psum_wire[0][11] = partial_sum_in_flat[383:352];
    assign partial_sum_out_flat[383:352] = psum_wire[32][11];
    assign psum_wire[0][12] = partial_sum_in_flat[415:384];
    assign partial_sum_out_flat[415:384] = psum_wire[32][12];
    assign psum_wire[0][13] = partial_sum_in_flat[447:416];
    assign partial_sum_out_flat[447:416] = psum_wire[32][13];
    assign psum_wire[0][14] = partial_sum_in_flat[479:448];
    assign partial_sum_out_flat[479:448] = psum_wire[32][14];
    assign psum_wire[0][15] = partial_sum_in_flat[511:480];
    assign partial_sum_out_flat[511:480] = psum_wire[32][15];
    assign psum_wire[0][16] = partial_sum_in_flat[543:512];
    assign partial_sum_out_flat[543:512] = psum_wire[32][16];
    assign psum_wire[0][17] = partial_sum_in_flat[575:544];
    assign partial_sum_out_flat[575:544] = psum_wire[32][17];
    assign psum_wire[0][18] = partial_sum_in_flat[607:576];
    assign partial_sum_out_flat[607:576] = psum_wire[32][18];
    assign psum_wire[0][19] = partial_sum_in_flat[639:608];
    assign partial_sum_out_flat[639:608] = psum_wire[32][19];
    assign psum_wire[0][20] = partial_sum_in_flat[671:640];
    assign partial_sum_out_flat[671:640] = psum_wire[32][20];
    assign psum_wire[0][21] = partial_sum_in_flat[703:672];
    assign partial_sum_out_flat[703:672] = psum_wire[32][21];
    assign psum_wire[0][22] = partial_sum_in_flat[735:704];
    assign partial_sum_out_flat[735:704] = psum_wire[32][22];
    assign psum_wire[0][23] = partial_sum_in_flat[767:736];
    assign partial_sum_out_flat[767:736] = psum_wire[32][23];
    assign psum_wire[0][24] = partial_sum_in_flat[799:768];
    assign partial_sum_out_flat[799:768] = psum_wire[32][24];
    assign psum_wire[0][25] = partial_sum_in_flat[831:800];
    assign partial_sum_out_flat[831:800] = psum_wire[32][25];
    assign psum_wire[0][26] = partial_sum_in_flat[863:832];
    assign partial_sum_out_flat[863:832] = psum_wire[32][26];
    assign psum_wire[0][27] = partial_sum_in_flat[895:864];
    assign partial_sum_out_flat[895:864] = psum_wire[32][27];
    assign psum_wire[0][28] = partial_sum_in_flat[927:896];
    assign partial_sum_out_flat[927:896] = psum_wire[32][28];
    assign psum_wire[0][29] = partial_sum_in_flat[959:928];
    assign partial_sum_out_flat[959:928] = psum_wire[32][29];
    assign psum_wire[0][30] = partial_sum_in_flat[991:960];
    assign partial_sum_out_flat[991:960] = psum_wire[32][30];
    assign psum_wire[0][31] = partial_sum_in_flat[1023:992];
    assign partial_sum_out_flat[1023:992] = psum_wire[32][31];

    PE_Wp19 pe_0_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][0]), .partial_sum_in(psum_wire[0][0]), .a_out(a_wire[0][1]), .partial_sum_out(psum_wire[1][0]));
    PE_Wn12 pe_0_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][1]), .partial_sum_in(psum_wire[0][1]), .a_out(a_wire[0][2]), .partial_sum_out(psum_wire[1][1]));
    PE_Wn11 pe_0_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][2]), .partial_sum_in(psum_wire[0][2]), .a_out(a_wire[0][3]), .partial_sum_out(psum_wire[1][2]));
    PE_Wp2 pe_0_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][3]), .partial_sum_in(psum_wire[0][3]), .a_out(a_wire[0][4]), .partial_sum_out(psum_wire[1][3]));
    PE_Wn3 pe_0_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][4]), .partial_sum_in(psum_wire[0][4]), .a_out(a_wire[0][5]), .partial_sum_out(psum_wire[1][4]));
    PE_Wn1 pe_0_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][5]), .partial_sum_in(psum_wire[0][5]), .a_out(a_wire[0][6]), .partial_sum_out(psum_wire[1][5]));
    PE_Wp7 pe_0_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][6]), .partial_sum_in(psum_wire[0][6]), .a_out(a_wire[0][7]), .partial_sum_out(psum_wire[1][6]));
    PE_Wp24 pe_0_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][7]), .partial_sum_in(psum_wire[0][7]), .a_out(a_wire[0][8]), .partial_sum_out(psum_wire[1][7]));
    PE_Wn16 pe_0_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][8]), .partial_sum_in(psum_wire[0][8]), .a_out(a_wire[0][9]), .partial_sum_out(psum_wire[1][8]));
    PE_Wn27 pe_0_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][9]), .partial_sum_in(psum_wire[0][9]), .a_out(a_wire[0][10]), .partial_sum_out(psum_wire[1][9]));
    PE_Wp31 pe_0_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][10]), .partial_sum_in(psum_wire[0][10]), .a_out(a_wire[0][11]), .partial_sum_out(psum_wire[1][10]));
    PE_Wp31 pe_0_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][11]), .partial_sum_in(psum_wire[0][11]), .a_out(a_wire[0][12]), .partial_sum_out(psum_wire[1][11]));
    PE_Wp71 pe_0_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][12]), .partial_sum_in(psum_wire[0][12]), .a_out(a_wire[0][13]), .partial_sum_out(psum_wire[1][12]));
    PE_Wn15 pe_0_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][13]), .partial_sum_in(psum_wire[0][13]), .a_out(a_wire[0][14]), .partial_sum_out(psum_wire[1][13]));
    PE_Wp21 pe_0_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][14]), .partial_sum_in(psum_wire[0][14]), .a_out(a_wire[0][15]), .partial_sum_out(psum_wire[1][14]));
    PE_Wn15 pe_0_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][15]), .partial_sum_in(psum_wire[0][15]), .a_out(a_wire[0][16]), .partial_sum_out(psum_wire[1][15]));
    PE_Wp19 pe_0_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][16]), .partial_sum_in(psum_wire[0][16]), .a_out(a_wire[0][17]), .partial_sum_out(psum_wire[1][16]));
    PE_Wp36 pe_0_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][17]), .partial_sum_in(psum_wire[0][17]), .a_out(a_wire[0][18]), .partial_sum_out(psum_wire[1][17]));
    PE_Wn11 pe_0_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][18]), .partial_sum_in(psum_wire[0][18]), .a_out(a_wire[0][19]), .partial_sum_out(psum_wire[1][18]));
    PE_Wn16 pe_0_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][19]), .partial_sum_in(psum_wire[0][19]), .a_out(a_wire[0][20]), .partial_sum_out(psum_wire[1][19]));
    PE_Wp24 pe_0_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][20]), .partial_sum_in(psum_wire[0][20]), .a_out(a_wire[0][21]), .partial_sum_out(psum_wire[1][20]));
    PE_Wp49 pe_0_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][21]), .partial_sum_in(psum_wire[0][21]), .a_out(a_wire[0][22]), .partial_sum_out(psum_wire[1][21]));
    PE_Wp3 pe_0_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][22]), .partial_sum_in(psum_wire[0][22]), .a_out(a_wire[0][23]), .partial_sum_out(psum_wire[1][22]));
    PE_Wn3 pe_0_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][23]), .partial_sum_in(psum_wire[0][23]), .a_out(a_wire[0][24]), .partial_sum_out(psum_wire[1][23]));
    PE_Wp0 pe_0_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][24]), .partial_sum_in(psum_wire[0][24]), .a_out(a_wire[0][25]), .partial_sum_out(psum_wire[1][24]));
    PE_Wp14 pe_0_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][25]), .partial_sum_in(psum_wire[0][25]), .a_out(a_wire[0][26]), .partial_sum_out(psum_wire[1][25]));
    PE_Wp4 pe_0_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][26]), .partial_sum_in(psum_wire[0][26]), .a_out(a_wire[0][27]), .partial_sum_out(psum_wire[1][26]));
    PE_Wp16 pe_0_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][27]), .partial_sum_in(psum_wire[0][27]), .a_out(a_wire[0][28]), .partial_sum_out(psum_wire[1][27]));
    PE_Wp7 pe_0_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][28]), .partial_sum_in(psum_wire[0][28]), .a_out(a_wire[0][29]), .partial_sum_out(psum_wire[1][28]));
    PE_Wp16 pe_0_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][29]), .partial_sum_in(psum_wire[0][29]), .a_out(a_wire[0][30]), .partial_sum_out(psum_wire[1][29]));
    PE_Wp23 pe_0_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][30]), .partial_sum_in(psum_wire[0][30]), .a_out(a_wire[0][31]), .partial_sum_out(psum_wire[1][30]));
    PE_Wp51 pe_0_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[0][31]), .partial_sum_in(psum_wire[0][31]), .a_out(a_wire[0][32]), .partial_sum_out(psum_wire[1][31]));
    PE_Wp19 pe_1_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][0]), .partial_sum_in(psum_wire[1][0]), .a_out(a_wire[1][1]), .partial_sum_out(psum_wire[2][0]));
    PE_Wp14 pe_1_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][1]), .partial_sum_in(psum_wire[1][1]), .a_out(a_wire[1][2]), .partial_sum_out(psum_wire[2][1]));
    PE_Wn2 pe_1_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][2]), .partial_sum_in(psum_wire[1][2]), .a_out(a_wire[1][3]), .partial_sum_out(psum_wire[2][2]));
    PE_Wp12 pe_1_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][3]), .partial_sum_in(psum_wire[1][3]), .a_out(a_wire[1][4]), .partial_sum_out(psum_wire[2][3]));
    PE_Wp47 pe_1_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][4]), .partial_sum_in(psum_wire[1][4]), .a_out(a_wire[1][5]), .partial_sum_out(psum_wire[2][4]));
    PE_Wn3 pe_1_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][5]), .partial_sum_in(psum_wire[1][5]), .a_out(a_wire[1][6]), .partial_sum_out(psum_wire[2][5]));
    PE_Wn46 pe_1_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][6]), .partial_sum_in(psum_wire[1][6]), .a_out(a_wire[1][7]), .partial_sum_out(psum_wire[2][6]));
    PE_Wn9 pe_1_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][7]), .partial_sum_in(psum_wire[1][7]), .a_out(a_wire[1][8]), .partial_sum_out(psum_wire[2][7]));
    PE_Wp28 pe_1_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][8]), .partial_sum_in(psum_wire[1][8]), .a_out(a_wire[1][9]), .partial_sum_out(psum_wire[2][8]));
    PE_Wp23 pe_1_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][9]), .partial_sum_in(psum_wire[1][9]), .a_out(a_wire[1][10]), .partial_sum_out(psum_wire[2][9]));
    PE_Wn62 pe_1_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][10]), .partial_sum_in(psum_wire[1][10]), .a_out(a_wire[1][11]), .partial_sum_out(psum_wire[2][10]));
    PE_Wn82 pe_1_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][11]), .partial_sum_in(psum_wire[1][11]), .a_out(a_wire[1][12]), .partial_sum_out(psum_wire[2][11]));
    PE_Wp18 pe_1_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][12]), .partial_sum_in(psum_wire[1][12]), .a_out(a_wire[1][13]), .partial_sum_out(psum_wire[2][12]));
    PE_Wn9 pe_1_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][13]), .partial_sum_in(psum_wire[1][13]), .a_out(a_wire[1][14]), .partial_sum_out(psum_wire[2][13]));
    PE_Wp6 pe_1_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][14]), .partial_sum_in(psum_wire[1][14]), .a_out(a_wire[1][15]), .partial_sum_out(psum_wire[2][14]));
    PE_Wp43 pe_1_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][15]), .partial_sum_in(psum_wire[1][15]), .a_out(a_wire[1][16]), .partial_sum_out(psum_wire[2][15]));
    PE_Wn34 pe_1_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][16]), .partial_sum_in(psum_wire[1][16]), .a_out(a_wire[1][17]), .partial_sum_out(psum_wire[2][16]));
    PE_Wp32 pe_1_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][17]), .partial_sum_in(psum_wire[1][17]), .a_out(a_wire[1][18]), .partial_sum_out(psum_wire[2][17]));
    PE_Wp20 pe_1_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][18]), .partial_sum_in(psum_wire[1][18]), .a_out(a_wire[1][19]), .partial_sum_out(psum_wire[2][18]));
    PE_Wp16 pe_1_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][19]), .partial_sum_in(psum_wire[1][19]), .a_out(a_wire[1][20]), .partial_sum_out(psum_wire[2][19]));
    PE_Wn29 pe_1_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][20]), .partial_sum_in(psum_wire[1][20]), .a_out(a_wire[1][21]), .partial_sum_out(psum_wire[2][20]));
    PE_Wp39 pe_1_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][21]), .partial_sum_in(psum_wire[1][21]), .a_out(a_wire[1][22]), .partial_sum_out(psum_wire[2][21]));
    PE_Wn15 pe_1_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][22]), .partial_sum_in(psum_wire[1][22]), .a_out(a_wire[1][23]), .partial_sum_out(psum_wire[2][22]));
    PE_Wp9 pe_1_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][23]), .partial_sum_in(psum_wire[1][23]), .a_out(a_wire[1][24]), .partial_sum_out(psum_wire[2][23]));
    PE_Wp75 pe_1_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][24]), .partial_sum_in(psum_wire[1][24]), .a_out(a_wire[1][25]), .partial_sum_out(psum_wire[2][24]));
    PE_Wn3 pe_1_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][25]), .partial_sum_in(psum_wire[1][25]), .a_out(a_wire[1][26]), .partial_sum_out(psum_wire[2][25]));
    PE_Wn28 pe_1_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][26]), .partial_sum_in(psum_wire[1][26]), .a_out(a_wire[1][27]), .partial_sum_out(psum_wire[2][26]));
    PE_Wp29 pe_1_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][27]), .partial_sum_in(psum_wire[1][27]), .a_out(a_wire[1][28]), .partial_sum_out(psum_wire[2][27]));
    PE_Wp20 pe_1_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][28]), .partial_sum_in(psum_wire[1][28]), .a_out(a_wire[1][29]), .partial_sum_out(psum_wire[2][28]));
    PE_Wn71 pe_1_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][29]), .partial_sum_in(psum_wire[1][29]), .a_out(a_wire[1][30]), .partial_sum_out(psum_wire[2][29]));
    PE_Wn66 pe_1_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][30]), .partial_sum_in(psum_wire[1][30]), .a_out(a_wire[1][31]), .partial_sum_out(psum_wire[2][30]));
    PE_Wp22 pe_1_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[1][31]), .partial_sum_in(psum_wire[1][31]), .a_out(a_wire[1][32]), .partial_sum_out(psum_wire[2][31]));
    PE_Wp18 pe_2_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][0]), .partial_sum_in(psum_wire[2][0]), .a_out(a_wire[2][1]), .partial_sum_out(psum_wire[3][0]));
    PE_Wp31 pe_2_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][1]), .partial_sum_in(psum_wire[2][1]), .a_out(a_wire[2][2]), .partial_sum_out(psum_wire[3][1]));
    PE_Wp3 pe_2_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][2]), .partial_sum_in(psum_wire[2][2]), .a_out(a_wire[2][3]), .partial_sum_out(psum_wire[3][2]));
    PE_Wp18 pe_2_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][3]), .partial_sum_in(psum_wire[2][3]), .a_out(a_wire[2][4]), .partial_sum_out(psum_wire[3][3]));
    PE_Wp50 pe_2_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][4]), .partial_sum_in(psum_wire[2][4]), .a_out(a_wire[2][5]), .partial_sum_out(psum_wire[3][4]));
    PE_Wp12 pe_2_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][5]), .partial_sum_in(psum_wire[2][5]), .a_out(a_wire[2][6]), .partial_sum_out(psum_wire[3][5]));
    PE_Wn38 pe_2_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][6]), .partial_sum_in(psum_wire[2][6]), .a_out(a_wire[2][7]), .partial_sum_out(psum_wire[3][6]));
    PE_Wp15 pe_2_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][7]), .partial_sum_in(psum_wire[2][7]), .a_out(a_wire[2][8]), .partial_sum_out(psum_wire[3][7]));
    PE_Wp7 pe_2_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][8]), .partial_sum_in(psum_wire[2][8]), .a_out(a_wire[2][9]), .partial_sum_out(psum_wire[3][8]));
    PE_Wp21 pe_2_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][9]), .partial_sum_in(psum_wire[2][9]), .a_out(a_wire[2][10]), .partial_sum_out(psum_wire[3][9]));
    PE_Wp11 pe_2_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][10]), .partial_sum_in(psum_wire[2][10]), .a_out(a_wire[2][11]), .partial_sum_out(psum_wire[3][10]));
    PE_Wn11 pe_2_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][11]), .partial_sum_in(psum_wire[2][11]), .a_out(a_wire[2][12]), .partial_sum_out(psum_wire[3][11]));
    PE_Wn17 pe_2_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][12]), .partial_sum_in(psum_wire[2][12]), .a_out(a_wire[2][13]), .partial_sum_out(psum_wire[3][12]));
    PE_Wn20 pe_2_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][13]), .partial_sum_in(psum_wire[2][13]), .a_out(a_wire[2][14]), .partial_sum_out(psum_wire[3][13]));
    PE_Wn5 pe_2_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][14]), .partial_sum_in(psum_wire[2][14]), .a_out(a_wire[2][15]), .partial_sum_out(psum_wire[3][14]));
    PE_Wn18 pe_2_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][15]), .partial_sum_in(psum_wire[2][15]), .a_out(a_wire[2][16]), .partial_sum_out(psum_wire[3][15]));
    PE_Wn19 pe_2_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][16]), .partial_sum_in(psum_wire[2][16]), .a_out(a_wire[2][17]), .partial_sum_out(psum_wire[3][16]));
    PE_Wp18 pe_2_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][17]), .partial_sum_in(psum_wire[2][17]), .a_out(a_wire[2][18]), .partial_sum_out(psum_wire[3][17]));
    PE_Wn3 pe_2_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][18]), .partial_sum_in(psum_wire[2][18]), .a_out(a_wire[2][19]), .partial_sum_out(psum_wire[3][18]));
    PE_Wn11 pe_2_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][19]), .partial_sum_in(psum_wire[2][19]), .a_out(a_wire[2][20]), .partial_sum_out(psum_wire[3][19]));
    PE_Wn56 pe_2_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][20]), .partial_sum_in(psum_wire[2][20]), .a_out(a_wire[2][21]), .partial_sum_out(psum_wire[3][20]));
    PE_Wp26 pe_2_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][21]), .partial_sum_in(psum_wire[2][21]), .a_out(a_wire[2][22]), .partial_sum_out(psum_wire[3][21]));
    PE_Wp3 pe_2_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][22]), .partial_sum_in(psum_wire[2][22]), .a_out(a_wire[2][23]), .partial_sum_out(psum_wire[3][22]));
    PE_Wn7 pe_2_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][23]), .partial_sum_in(psum_wire[2][23]), .a_out(a_wire[2][24]), .partial_sum_out(psum_wire[3][23]));
    PE_Wp35 pe_2_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][24]), .partial_sum_in(psum_wire[2][24]), .a_out(a_wire[2][25]), .partial_sum_out(psum_wire[3][24]));
    PE_Wp12 pe_2_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][25]), .partial_sum_in(psum_wire[2][25]), .a_out(a_wire[2][26]), .partial_sum_out(psum_wire[3][25]));
    PE_Wn19 pe_2_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][26]), .partial_sum_in(psum_wire[2][26]), .a_out(a_wire[2][27]), .partial_sum_out(psum_wire[3][26]));
    PE_Wn4 pe_2_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][27]), .partial_sum_in(psum_wire[2][27]), .a_out(a_wire[2][28]), .partial_sum_out(psum_wire[3][27]));
    PE_Wn8 pe_2_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][28]), .partial_sum_in(psum_wire[2][28]), .a_out(a_wire[2][29]), .partial_sum_out(psum_wire[3][28]));
    PE_Wn44 pe_2_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][29]), .partial_sum_in(psum_wire[2][29]), .a_out(a_wire[2][30]), .partial_sum_out(psum_wire[3][29]));
    PE_Wn48 pe_2_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][30]), .partial_sum_in(psum_wire[2][30]), .a_out(a_wire[2][31]), .partial_sum_out(psum_wire[3][30]));
    PE_Wp33 pe_2_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[2][31]), .partial_sum_in(psum_wire[2][31]), .a_out(a_wire[2][32]), .partial_sum_out(psum_wire[3][31]));
    PE_Wp16 pe_3_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][0]), .partial_sum_in(psum_wire[3][0]), .a_out(a_wire[3][1]), .partial_sum_out(psum_wire[4][0]));
    PE_Wp47 pe_3_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][1]), .partial_sum_in(psum_wire[3][1]), .a_out(a_wire[3][2]), .partial_sum_out(psum_wire[4][1]));
    PE_Wn3 pe_3_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][2]), .partial_sum_in(psum_wire[3][2]), .a_out(a_wire[3][3]), .partial_sum_out(psum_wire[4][2]));
    PE_Wp25 pe_3_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][3]), .partial_sum_in(psum_wire[3][3]), .a_out(a_wire[3][4]), .partial_sum_out(psum_wire[4][3]));
    PE_Wp35 pe_3_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][4]), .partial_sum_in(psum_wire[3][4]), .a_out(a_wire[3][5]), .partial_sum_out(psum_wire[4][4]));
    PE_Wn3 pe_3_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][5]), .partial_sum_in(psum_wire[3][5]), .a_out(a_wire[3][6]), .partial_sum_out(psum_wire[4][5]));
    PE_Wn21 pe_3_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][6]), .partial_sum_in(psum_wire[3][6]), .a_out(a_wire[3][7]), .partial_sum_out(psum_wire[4][6]));
    PE_Wn13 pe_3_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][7]), .partial_sum_in(psum_wire[3][7]), .a_out(a_wire[3][8]), .partial_sum_out(psum_wire[4][7]));
    PE_Wp31 pe_3_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][8]), .partial_sum_in(psum_wire[3][8]), .a_out(a_wire[3][9]), .partial_sum_out(psum_wire[4][8]));
    PE_Wp57 pe_3_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][9]), .partial_sum_in(psum_wire[3][9]), .a_out(a_wire[3][10]), .partial_sum_out(psum_wire[4][9]));
    PE_Wp20 pe_3_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][10]), .partial_sum_in(psum_wire[3][10]), .a_out(a_wire[3][11]), .partial_sum_out(psum_wire[4][10]));
    PE_Wn16 pe_3_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][11]), .partial_sum_in(psum_wire[3][11]), .a_out(a_wire[3][12]), .partial_sum_out(psum_wire[4][11]));
    PE_Wn28 pe_3_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][12]), .partial_sum_in(psum_wire[3][12]), .a_out(a_wire[3][13]), .partial_sum_out(psum_wire[4][12]));
    PE_Wp36 pe_3_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][13]), .partial_sum_in(psum_wire[3][13]), .a_out(a_wire[3][14]), .partial_sum_out(psum_wire[4][13]));
    PE_Wp51 pe_3_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][14]), .partial_sum_in(psum_wire[3][14]), .a_out(a_wire[3][15]), .partial_sum_out(psum_wire[4][14]));
    PE_Wp16 pe_3_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][15]), .partial_sum_in(psum_wire[3][15]), .a_out(a_wire[3][16]), .partial_sum_out(psum_wire[4][15]));
    PE_Wn20 pe_3_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][16]), .partial_sum_in(psum_wire[3][16]), .a_out(a_wire[3][17]), .partial_sum_out(psum_wire[4][16]));
    PE_Wp16 pe_3_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][17]), .partial_sum_in(psum_wire[3][17]), .a_out(a_wire[3][18]), .partial_sum_out(psum_wire[4][17]));
    PE_Wn2 pe_3_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][18]), .partial_sum_in(psum_wire[3][18]), .a_out(a_wire[3][19]), .partial_sum_out(psum_wire[4][18]));
    PE_Wp5 pe_3_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][19]), .partial_sum_in(psum_wire[3][19]), .a_out(a_wire[3][20]), .partial_sum_out(psum_wire[4][19]));
    PE_Wn3 pe_3_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][20]), .partial_sum_in(psum_wire[3][20]), .a_out(a_wire[3][21]), .partial_sum_out(psum_wire[4][20]));
    PE_Wp22 pe_3_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][21]), .partial_sum_in(psum_wire[3][21]), .a_out(a_wire[3][22]), .partial_sum_out(psum_wire[4][21]));
    PE_Wn31 pe_3_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][22]), .partial_sum_in(psum_wire[3][22]), .a_out(a_wire[3][23]), .partial_sum_out(psum_wire[4][22]));
    PE_Wn35 pe_3_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][23]), .partial_sum_in(psum_wire[3][23]), .a_out(a_wire[3][24]), .partial_sum_out(psum_wire[4][23]));
    PE_Wp66 pe_3_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][24]), .partial_sum_in(psum_wire[3][24]), .a_out(a_wire[3][25]), .partial_sum_out(psum_wire[4][24]));
    PE_Wn42 pe_3_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][25]), .partial_sum_in(psum_wire[3][25]), .a_out(a_wire[3][26]), .partial_sum_out(psum_wire[4][25]));
    PE_Wn31 pe_3_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][26]), .partial_sum_in(psum_wire[3][26]), .a_out(a_wire[3][27]), .partial_sum_out(psum_wire[4][26]));
    PE_Wp14 pe_3_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][27]), .partial_sum_in(psum_wire[3][27]), .a_out(a_wire[3][28]), .partial_sum_out(psum_wire[4][27]));
    PE_Wp33 pe_3_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][28]), .partial_sum_in(psum_wire[3][28]), .a_out(a_wire[3][29]), .partial_sum_out(psum_wire[4][28]));
    PE_Wn38 pe_3_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][29]), .partial_sum_in(psum_wire[3][29]), .a_out(a_wire[3][30]), .partial_sum_out(psum_wire[4][29]));
    PE_Wn126 pe_3_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][30]), .partial_sum_in(psum_wire[3][30]), .a_out(a_wire[3][31]), .partial_sum_out(psum_wire[4][30]));
    PE_Wp0 pe_3_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[3][31]), .partial_sum_in(psum_wire[3][31]), .a_out(a_wire[3][32]), .partial_sum_out(psum_wire[4][31]));
    PE_Wp6 pe_4_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][0]), .partial_sum_in(psum_wire[4][0]), .a_out(a_wire[4][1]), .partial_sum_out(psum_wire[5][0]));
    PE_Wn22 pe_4_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][1]), .partial_sum_in(psum_wire[4][1]), .a_out(a_wire[4][2]), .partial_sum_out(psum_wire[5][1]));
    PE_Wn22 pe_4_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][2]), .partial_sum_in(psum_wire[4][2]), .a_out(a_wire[4][3]), .partial_sum_out(psum_wire[5][2]));
    PE_Wn29 pe_4_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][3]), .partial_sum_in(psum_wire[4][3]), .a_out(a_wire[4][4]), .partial_sum_out(psum_wire[5][3]));
    PE_Wn74 pe_4_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][4]), .partial_sum_in(psum_wire[4][4]), .a_out(a_wire[4][5]), .partial_sum_out(psum_wire[5][4]));
    PE_Wp0 pe_4_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][5]), .partial_sum_in(psum_wire[4][5]), .a_out(a_wire[4][6]), .partial_sum_out(psum_wire[5][5]));
    PE_Wp46 pe_4_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][6]), .partial_sum_in(psum_wire[4][6]), .a_out(a_wire[4][7]), .partial_sum_out(psum_wire[5][6]));
    PE_Wp3 pe_4_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][7]), .partial_sum_in(psum_wire[4][7]), .a_out(a_wire[4][8]), .partial_sum_out(psum_wire[5][7]));
    PE_Wn16 pe_4_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][8]), .partial_sum_in(psum_wire[4][8]), .a_out(a_wire[4][9]), .partial_sum_out(psum_wire[5][8]));
    PE_Wn35 pe_4_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][9]), .partial_sum_in(psum_wire[4][9]), .a_out(a_wire[4][10]), .partial_sum_out(psum_wire[5][9]));
    PE_Wp13 pe_4_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][10]), .partial_sum_in(psum_wire[4][10]), .a_out(a_wire[4][11]), .partial_sum_out(psum_wire[5][10]));
    PE_Wp24 pe_4_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][11]), .partial_sum_in(psum_wire[4][11]), .a_out(a_wire[4][12]), .partial_sum_out(psum_wire[5][11]));
    PE_Wp44 pe_4_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][12]), .partial_sum_in(psum_wire[4][12]), .a_out(a_wire[4][13]), .partial_sum_out(psum_wire[5][12]));
    PE_Wn15 pe_4_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][13]), .partial_sum_in(psum_wire[4][13]), .a_out(a_wire[4][14]), .partial_sum_out(psum_wire[5][13]));
    PE_Wp58 pe_4_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][14]), .partial_sum_in(psum_wire[4][14]), .a_out(a_wire[4][15]), .partial_sum_out(psum_wire[5][14]));
    PE_Wp20 pe_4_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][15]), .partial_sum_in(psum_wire[4][15]), .a_out(a_wire[4][16]), .partial_sum_out(psum_wire[5][15]));
    PE_Wp11 pe_4_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][16]), .partial_sum_in(psum_wire[4][16]), .a_out(a_wire[4][17]), .partial_sum_out(psum_wire[5][16]));
    PE_Wp19 pe_4_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][17]), .partial_sum_in(psum_wire[4][17]), .a_out(a_wire[4][18]), .partial_sum_out(psum_wire[5][17]));
    PE_Wn2 pe_4_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][18]), .partial_sum_in(psum_wire[4][18]), .a_out(a_wire[4][19]), .partial_sum_out(psum_wire[5][18]));
    PE_Wn7 pe_4_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][19]), .partial_sum_in(psum_wire[4][19]), .a_out(a_wire[4][20]), .partial_sum_out(psum_wire[5][19]));
    PE_Wp56 pe_4_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][20]), .partial_sum_in(psum_wire[4][20]), .a_out(a_wire[4][21]), .partial_sum_out(psum_wire[5][20]));
    PE_Wn13 pe_4_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][21]), .partial_sum_in(psum_wire[4][21]), .a_out(a_wire[4][22]), .partial_sum_out(psum_wire[5][21]));
    PE_Wp7 pe_4_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][22]), .partial_sum_in(psum_wire[4][22]), .a_out(a_wire[4][23]), .partial_sum_out(psum_wire[5][22]));
    PE_Wp0 pe_4_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][23]), .partial_sum_in(psum_wire[4][23]), .a_out(a_wire[4][24]), .partial_sum_out(psum_wire[5][23]));
    PE_Wn58 pe_4_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][24]), .partial_sum_in(psum_wire[4][24]), .a_out(a_wire[4][25]), .partial_sum_out(psum_wire[5][24]));
    PE_Wp12 pe_4_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][25]), .partial_sum_in(psum_wire[4][25]), .a_out(a_wire[4][26]), .partial_sum_out(psum_wire[5][25]));
    PE_Wp34 pe_4_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][26]), .partial_sum_in(psum_wire[4][26]), .a_out(a_wire[4][27]), .partial_sum_out(psum_wire[5][26]));
    PE_Wp16 pe_4_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][27]), .partial_sum_in(psum_wire[4][27]), .a_out(a_wire[4][28]), .partial_sum_out(psum_wire[5][27]));
    PE_Wp5 pe_4_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][28]), .partial_sum_in(psum_wire[4][28]), .a_out(a_wire[4][29]), .partial_sum_out(psum_wire[5][28]));
    PE_Wp67 pe_4_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][29]), .partial_sum_in(psum_wire[4][29]), .a_out(a_wire[4][30]), .partial_sum_out(psum_wire[5][29]));
    PE_Wp68 pe_4_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][30]), .partial_sum_in(psum_wire[4][30]), .a_out(a_wire[4][31]), .partial_sum_out(psum_wire[5][30]));
    PE_Wn9 pe_4_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[4][31]), .partial_sum_in(psum_wire[4][31]), .a_out(a_wire[4][32]), .partial_sum_out(psum_wire[5][31]));
    PE_Wn36 pe_5_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][0]), .partial_sum_in(psum_wire[5][0]), .a_out(a_wire[5][1]), .partial_sum_out(psum_wire[6][0]));
    PE_Wp37 pe_5_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][1]), .partial_sum_in(psum_wire[5][1]), .a_out(a_wire[5][2]), .partial_sum_out(psum_wire[6][1]));
    PE_Wn30 pe_5_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][2]), .partial_sum_in(psum_wire[5][2]), .a_out(a_wire[5][3]), .partial_sum_out(psum_wire[6][2]));
    PE_Wn12 pe_5_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][3]), .partial_sum_in(psum_wire[5][3]), .a_out(a_wire[5][4]), .partial_sum_out(psum_wire[6][3]));
    PE_Wp13 pe_5_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][4]), .partial_sum_in(psum_wire[5][4]), .a_out(a_wire[5][5]), .partial_sum_out(psum_wire[6][4]));
    PE_Wn21 pe_5_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][5]), .partial_sum_in(psum_wire[5][5]), .a_out(a_wire[5][6]), .partial_sum_out(psum_wire[6][5]));
    PE_Wn12 pe_5_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][6]), .partial_sum_in(psum_wire[5][6]), .a_out(a_wire[5][7]), .partial_sum_out(psum_wire[6][6]));
    PE_Wp41 pe_5_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][7]), .partial_sum_in(psum_wire[5][7]), .a_out(a_wire[5][8]), .partial_sum_out(psum_wire[6][7]));
    PE_Wn5 pe_5_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][8]), .partial_sum_in(psum_wire[5][8]), .a_out(a_wire[5][9]), .partial_sum_out(psum_wire[6][8]));
    PE_Wn11 pe_5_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][9]), .partial_sum_in(psum_wire[5][9]), .a_out(a_wire[5][10]), .partial_sum_out(psum_wire[6][9]));
    PE_Wn16 pe_5_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][10]), .partial_sum_in(psum_wire[5][10]), .a_out(a_wire[5][11]), .partial_sum_out(psum_wire[6][10]));
    PE_Wn8 pe_5_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][11]), .partial_sum_in(psum_wire[5][11]), .a_out(a_wire[5][12]), .partial_sum_out(psum_wire[6][11]));
    PE_Wn3 pe_5_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][12]), .partial_sum_in(psum_wire[5][12]), .a_out(a_wire[5][13]), .partial_sum_out(psum_wire[6][12]));
    PE_Wp31 pe_5_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][13]), .partial_sum_in(psum_wire[5][13]), .a_out(a_wire[5][14]), .partial_sum_out(psum_wire[6][13]));
    PE_Wn28 pe_5_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][14]), .partial_sum_in(psum_wire[5][14]), .a_out(a_wire[5][15]), .partial_sum_out(psum_wire[6][14]));
    PE_Wp6 pe_5_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][15]), .partial_sum_in(psum_wire[5][15]), .a_out(a_wire[5][16]), .partial_sum_out(psum_wire[6][15]));
    PE_Wn2 pe_5_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][16]), .partial_sum_in(psum_wire[5][16]), .a_out(a_wire[5][17]), .partial_sum_out(psum_wire[6][16]));
    PE_Wn57 pe_5_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][17]), .partial_sum_in(psum_wire[5][17]), .a_out(a_wire[5][18]), .partial_sum_out(psum_wire[6][17]));
    PE_Wn3 pe_5_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][18]), .partial_sum_in(psum_wire[5][18]), .a_out(a_wire[5][19]), .partial_sum_out(psum_wire[6][18]));
    PE_Wp20 pe_5_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][19]), .partial_sum_in(psum_wire[5][19]), .a_out(a_wire[5][20]), .partial_sum_out(psum_wire[6][19]));
    PE_Wp31 pe_5_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][20]), .partial_sum_in(psum_wire[5][20]), .a_out(a_wire[5][21]), .partial_sum_out(psum_wire[6][20]));
    PE_Wp30 pe_5_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][21]), .partial_sum_in(psum_wire[5][21]), .a_out(a_wire[5][22]), .partial_sum_out(psum_wire[6][21]));
    PE_Wp30 pe_5_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][22]), .partial_sum_in(psum_wire[5][22]), .a_out(a_wire[5][23]), .partial_sum_out(psum_wire[6][22]));
    PE_Wn32 pe_5_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][23]), .partial_sum_in(psum_wire[5][23]), .a_out(a_wire[5][24]), .partial_sum_out(psum_wire[6][23]));
    PE_Wp11 pe_5_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][24]), .partial_sum_in(psum_wire[5][24]), .a_out(a_wire[5][25]), .partial_sum_out(psum_wire[6][24]));
    PE_Wn25 pe_5_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][25]), .partial_sum_in(psum_wire[5][25]), .a_out(a_wire[5][26]), .partial_sum_out(psum_wire[6][25]));
    PE_Wp9 pe_5_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][26]), .partial_sum_in(psum_wire[5][26]), .a_out(a_wire[5][27]), .partial_sum_out(psum_wire[6][26]));
    PE_Wn43 pe_5_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][27]), .partial_sum_in(psum_wire[5][27]), .a_out(a_wire[5][28]), .partial_sum_out(psum_wire[6][27]));
    PE_Wn18 pe_5_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][28]), .partial_sum_in(psum_wire[5][28]), .a_out(a_wire[5][29]), .partial_sum_out(psum_wire[6][28]));
    PE_Wn14 pe_5_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][29]), .partial_sum_in(psum_wire[5][29]), .a_out(a_wire[5][30]), .partial_sum_out(psum_wire[6][29]));
    PE_Wp1 pe_5_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][30]), .partial_sum_in(psum_wire[5][30]), .a_out(a_wire[5][31]), .partial_sum_out(psum_wire[6][30]));
    PE_Wn46 pe_5_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[5][31]), .partial_sum_in(psum_wire[5][31]), .a_out(a_wire[5][32]), .partial_sum_out(psum_wire[6][31]));
    PE_Wp16 pe_6_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][0]), .partial_sum_in(psum_wire[6][0]), .a_out(a_wire[6][1]), .partial_sum_out(psum_wire[7][0]));
    PE_Wn29 pe_6_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][1]), .partial_sum_in(psum_wire[6][1]), .a_out(a_wire[6][2]), .partial_sum_out(psum_wire[7][1]));
    PE_Wp17 pe_6_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][2]), .partial_sum_in(psum_wire[6][2]), .a_out(a_wire[6][3]), .partial_sum_out(psum_wire[7][2]));
    PE_Wp47 pe_6_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][3]), .partial_sum_in(psum_wire[6][3]), .a_out(a_wire[6][4]), .partial_sum_out(psum_wire[7][3]));
    PE_Wp49 pe_6_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][4]), .partial_sum_in(psum_wire[6][4]), .a_out(a_wire[6][5]), .partial_sum_out(psum_wire[7][4]));
    PE_Wp0 pe_6_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][5]), .partial_sum_in(psum_wire[6][5]), .a_out(a_wire[6][6]), .partial_sum_out(psum_wire[7][5]));
    PE_Wn14 pe_6_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][6]), .partial_sum_in(psum_wire[6][6]), .a_out(a_wire[6][7]), .partial_sum_out(psum_wire[7][6]));
    PE_Wn21 pe_6_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][7]), .partial_sum_in(psum_wire[6][7]), .a_out(a_wire[6][8]), .partial_sum_out(psum_wire[7][7]));
    PE_Wp8 pe_6_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][8]), .partial_sum_in(psum_wire[6][8]), .a_out(a_wire[6][9]), .partial_sum_out(psum_wire[7][8]));
    PE_Wp57 pe_6_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][9]), .partial_sum_in(psum_wire[6][9]), .a_out(a_wire[6][10]), .partial_sum_out(psum_wire[7][9]));
    PE_Wp16 pe_6_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][10]), .partial_sum_in(psum_wire[6][10]), .a_out(a_wire[6][11]), .partial_sum_out(psum_wire[7][10]));
    PE_Wn43 pe_6_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][11]), .partial_sum_in(psum_wire[6][11]), .a_out(a_wire[6][12]), .partial_sum_out(psum_wire[7][11]));
    PE_Wn28 pe_6_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][12]), .partial_sum_in(psum_wire[6][12]), .a_out(a_wire[6][13]), .partial_sum_out(psum_wire[7][12]));
    PE_Wn30 pe_6_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][13]), .partial_sum_in(psum_wire[6][13]), .a_out(a_wire[6][14]), .partial_sum_out(psum_wire[7][13]));
    PE_Wn62 pe_6_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][14]), .partial_sum_in(psum_wire[6][14]), .a_out(a_wire[6][15]), .partial_sum_out(psum_wire[7][14]));
    PE_Wn56 pe_6_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][15]), .partial_sum_in(psum_wire[6][15]), .a_out(a_wire[6][16]), .partial_sum_out(psum_wire[7][15]));
    PE_Wn4 pe_6_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][16]), .partial_sum_in(psum_wire[6][16]), .a_out(a_wire[6][17]), .partial_sum_out(psum_wire[7][16]));
    PE_Wn22 pe_6_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][17]), .partial_sum_in(psum_wire[6][17]), .a_out(a_wire[6][18]), .partial_sum_out(psum_wire[7][17]));
    PE_Wp30 pe_6_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][18]), .partial_sum_in(psum_wire[6][18]), .a_out(a_wire[6][19]), .partial_sum_out(psum_wire[7][18]));
    PE_Wn55 pe_6_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][19]), .partial_sum_in(psum_wire[6][19]), .a_out(a_wire[6][20]), .partial_sum_out(psum_wire[7][19]));
    PE_Wp31 pe_6_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][20]), .partial_sum_in(psum_wire[6][20]), .a_out(a_wire[6][21]), .partial_sum_out(psum_wire[7][20]));
    PE_Wn53 pe_6_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][21]), .partial_sum_in(psum_wire[6][21]), .a_out(a_wire[6][22]), .partial_sum_out(psum_wire[7][21]));
    PE_Wp9 pe_6_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][22]), .partial_sum_in(psum_wire[6][22]), .a_out(a_wire[6][23]), .partial_sum_out(psum_wire[7][22]));
    PE_Wn24 pe_6_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][23]), .partial_sum_in(psum_wire[6][23]), .a_out(a_wire[6][24]), .partial_sum_out(psum_wire[7][23]));
    PE_Wp70 pe_6_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][24]), .partial_sum_in(psum_wire[6][24]), .a_out(a_wire[6][25]), .partial_sum_out(psum_wire[7][24]));
    PE_Wp3 pe_6_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][25]), .partial_sum_in(psum_wire[6][25]), .a_out(a_wire[6][26]), .partial_sum_out(psum_wire[7][25]));
    PE_Wn43 pe_6_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][26]), .partial_sum_in(psum_wire[6][26]), .a_out(a_wire[6][27]), .partial_sum_out(psum_wire[7][26]));
    PE_Wp27 pe_6_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][27]), .partial_sum_in(psum_wire[6][27]), .a_out(a_wire[6][28]), .partial_sum_out(psum_wire[7][27]));
    PE_Wp47 pe_6_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][28]), .partial_sum_in(psum_wire[6][28]), .a_out(a_wire[6][29]), .partial_sum_out(psum_wire[7][28]));
    PE_Wn80 pe_6_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][29]), .partial_sum_in(psum_wire[6][29]), .a_out(a_wire[6][30]), .partial_sum_out(psum_wire[7][29]));
    PE_Wp16 pe_6_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][30]), .partial_sum_in(psum_wire[6][30]), .a_out(a_wire[6][31]), .partial_sum_out(psum_wire[7][30]));
    PE_Wn3 pe_6_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[6][31]), .partial_sum_in(psum_wire[6][31]), .a_out(a_wire[6][32]), .partial_sum_out(psum_wire[7][31]));
    PE_Wn21 pe_7_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][0]), .partial_sum_in(psum_wire[7][0]), .a_out(a_wire[7][1]), .partial_sum_out(psum_wire[8][0]));
    PE_Wp4 pe_7_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][1]), .partial_sum_in(psum_wire[7][1]), .a_out(a_wire[7][2]), .partial_sum_out(psum_wire[8][1]));
    PE_Wp29 pe_7_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][2]), .partial_sum_in(psum_wire[7][2]), .a_out(a_wire[7][3]), .partial_sum_out(psum_wire[8][2]));
    PE_Wp20 pe_7_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][3]), .partial_sum_in(psum_wire[7][3]), .a_out(a_wire[7][4]), .partial_sum_out(psum_wire[8][3]));
    PE_Wp46 pe_7_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][4]), .partial_sum_in(psum_wire[7][4]), .a_out(a_wire[7][5]), .partial_sum_out(psum_wire[8][4]));
    PE_Wp12 pe_7_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][5]), .partial_sum_in(psum_wire[7][5]), .a_out(a_wire[7][6]), .partial_sum_out(psum_wire[8][5]));
    PE_Wn39 pe_7_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][6]), .partial_sum_in(psum_wire[7][6]), .a_out(a_wire[7][7]), .partial_sum_out(psum_wire[8][6]));
    PE_Wn3 pe_7_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][7]), .partial_sum_in(psum_wire[7][7]), .a_out(a_wire[7][8]), .partial_sum_out(psum_wire[8][7]));
    PE_Wp27 pe_7_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][8]), .partial_sum_in(psum_wire[7][8]), .a_out(a_wire[7][9]), .partial_sum_out(psum_wire[8][8]));
    PE_Wp21 pe_7_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][9]), .partial_sum_in(psum_wire[7][9]), .a_out(a_wire[7][10]), .partial_sum_out(psum_wire[8][9]));
    PE_Wp15 pe_7_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][10]), .partial_sum_in(psum_wire[7][10]), .a_out(a_wire[7][11]), .partial_sum_out(psum_wire[8][10]));
    PE_Wn25 pe_7_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][11]), .partial_sum_in(psum_wire[7][11]), .a_out(a_wire[7][12]), .partial_sum_out(psum_wire[8][11]));
    PE_Wn16 pe_7_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][12]), .partial_sum_in(psum_wire[7][12]), .a_out(a_wire[7][13]), .partial_sum_out(psum_wire[8][12]));
    PE_Wp26 pe_7_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][13]), .partial_sum_in(psum_wire[7][13]), .a_out(a_wire[7][14]), .partial_sum_out(psum_wire[8][13]));
    PE_Wn29 pe_7_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][14]), .partial_sum_in(psum_wire[7][14]), .a_out(a_wire[7][15]), .partial_sum_out(psum_wire[8][14]));
    PE_Wn7 pe_7_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][15]), .partial_sum_in(psum_wire[7][15]), .a_out(a_wire[7][16]), .partial_sum_out(psum_wire[8][15]));
    PE_Wn18 pe_7_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][16]), .partial_sum_in(psum_wire[7][16]), .a_out(a_wire[7][17]), .partial_sum_out(psum_wire[8][16]));
    PE_Wn20 pe_7_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][17]), .partial_sum_in(psum_wire[7][17]), .a_out(a_wire[7][18]), .partial_sum_out(psum_wire[8][17]));
    PE_Wn3 pe_7_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][18]), .partial_sum_in(psum_wire[7][18]), .a_out(a_wire[7][19]), .partial_sum_out(psum_wire[8][18]));
    PE_Wp26 pe_7_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][19]), .partial_sum_in(psum_wire[7][19]), .a_out(a_wire[7][20]), .partial_sum_out(psum_wire[8][19]));
    PE_Wn31 pe_7_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][20]), .partial_sum_in(psum_wire[7][20]), .a_out(a_wire[7][21]), .partial_sum_out(psum_wire[8][20]));
    PE_Wn3 pe_7_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][21]), .partial_sum_in(psum_wire[7][21]), .a_out(a_wire[7][22]), .partial_sum_out(psum_wire[8][21]));
    PE_Wn30 pe_7_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][22]), .partial_sum_in(psum_wire[7][22]), .a_out(a_wire[7][23]), .partial_sum_out(psum_wire[8][22]));
    PE_Wp1 pe_7_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][23]), .partial_sum_in(psum_wire[7][23]), .a_out(a_wire[7][24]), .partial_sum_out(psum_wire[8][23]));
    PE_Wp68 pe_7_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][24]), .partial_sum_in(psum_wire[7][24]), .a_out(a_wire[7][25]), .partial_sum_out(psum_wire[8][24]));
    PE_Wn8 pe_7_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][25]), .partial_sum_in(psum_wire[7][25]), .a_out(a_wire[7][26]), .partial_sum_out(psum_wire[8][25]));
    PE_Wn9 pe_7_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][26]), .partial_sum_in(psum_wire[7][26]), .a_out(a_wire[7][27]), .partial_sum_out(psum_wire[8][26]));
    PE_Wn13 pe_7_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][27]), .partial_sum_in(psum_wire[7][27]), .a_out(a_wire[7][28]), .partial_sum_out(psum_wire[8][27]));
    PE_Wp22 pe_7_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][28]), .partial_sum_in(psum_wire[7][28]), .a_out(a_wire[7][29]), .partial_sum_out(psum_wire[8][28]));
    PE_Wn55 pe_7_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][29]), .partial_sum_in(psum_wire[7][29]), .a_out(a_wire[7][30]), .partial_sum_out(psum_wire[8][29]));
    PE_Wn91 pe_7_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][30]), .partial_sum_in(psum_wire[7][30]), .a_out(a_wire[7][31]), .partial_sum_out(psum_wire[8][30]));
    PE_Wp27 pe_7_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[7][31]), .partial_sum_in(psum_wire[7][31]), .a_out(a_wire[7][32]), .partial_sum_out(psum_wire[8][31]));
    PE_Wn7 pe_8_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][0]), .partial_sum_in(psum_wire[8][0]), .a_out(a_wire[8][1]), .partial_sum_out(psum_wire[9][0]));
    PE_Wn21 pe_8_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][1]), .partial_sum_in(psum_wire[8][1]), .a_out(a_wire[8][2]), .partial_sum_out(psum_wire[9][1]));
    PE_Wp13 pe_8_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][2]), .partial_sum_in(psum_wire[8][2]), .a_out(a_wire[8][3]), .partial_sum_out(psum_wire[9][2]));
    PE_Wp25 pe_8_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][3]), .partial_sum_in(psum_wire[8][3]), .a_out(a_wire[8][4]), .partial_sum_out(psum_wire[9][3]));
    PE_Wp40 pe_8_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][4]), .partial_sum_in(psum_wire[8][4]), .a_out(a_wire[8][5]), .partial_sum_out(psum_wire[9][4]));
    PE_Wn20 pe_8_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][5]), .partial_sum_in(psum_wire[8][5]), .a_out(a_wire[8][6]), .partial_sum_out(psum_wire[9][5]));
    PE_Wn25 pe_8_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][6]), .partial_sum_in(psum_wire[8][6]), .a_out(a_wire[8][7]), .partial_sum_out(psum_wire[9][6]));
    PE_Wn26 pe_8_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][7]), .partial_sum_in(psum_wire[8][7]), .a_out(a_wire[8][8]), .partial_sum_out(psum_wire[9][7]));
    PE_Wn27 pe_8_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][8]), .partial_sum_in(psum_wire[8][8]), .a_out(a_wire[8][9]), .partial_sum_out(psum_wire[9][8]));
    PE_Wn18 pe_8_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][9]), .partial_sum_in(psum_wire[8][9]), .a_out(a_wire[8][10]), .partial_sum_out(psum_wire[9][9]));
    PE_Wp40 pe_8_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][10]), .partial_sum_in(psum_wire[8][10]), .a_out(a_wire[8][11]), .partial_sum_out(psum_wire[9][10]));
    PE_Wn66 pe_8_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][11]), .partial_sum_in(psum_wire[8][11]), .a_out(a_wire[8][12]), .partial_sum_out(psum_wire[9][11]));
    PE_Wp4 pe_8_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][12]), .partial_sum_in(psum_wire[8][12]), .a_out(a_wire[8][13]), .partial_sum_out(psum_wire[9][12]));
    PE_Wn5 pe_8_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][13]), .partial_sum_in(psum_wire[8][13]), .a_out(a_wire[8][14]), .partial_sum_out(psum_wire[9][13]));
    PE_Wn8 pe_8_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][14]), .partial_sum_in(psum_wire[8][14]), .a_out(a_wire[8][15]), .partial_sum_out(psum_wire[9][14]));
    PE_Wn37 pe_8_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][15]), .partial_sum_in(psum_wire[8][15]), .a_out(a_wire[8][16]), .partial_sum_out(psum_wire[9][15]));
    PE_Wn4 pe_8_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][16]), .partial_sum_in(psum_wire[8][16]), .a_out(a_wire[8][17]), .partial_sum_out(psum_wire[9][16]));
    PE_Wn17 pe_8_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][17]), .partial_sum_in(psum_wire[8][17]), .a_out(a_wire[8][18]), .partial_sum_out(psum_wire[9][17]));
    PE_Wn43 pe_8_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][18]), .partial_sum_in(psum_wire[8][18]), .a_out(a_wire[8][19]), .partial_sum_out(psum_wire[9][18]));
    PE_Wp6 pe_8_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][19]), .partial_sum_in(psum_wire[8][19]), .a_out(a_wire[8][20]), .partial_sum_out(psum_wire[9][19]));
    PE_Wn12 pe_8_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][20]), .partial_sum_in(psum_wire[8][20]), .a_out(a_wire[8][21]), .partial_sum_out(psum_wire[9][20]));
    PE_Wp30 pe_8_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][21]), .partial_sum_in(psum_wire[8][21]), .a_out(a_wire[8][22]), .partial_sum_out(psum_wire[9][21]));
    PE_Wp27 pe_8_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][22]), .partial_sum_in(psum_wire[8][22]), .a_out(a_wire[8][23]), .partial_sum_out(psum_wire[9][22]));
    PE_Wn32 pe_8_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][23]), .partial_sum_in(psum_wire[8][23]), .a_out(a_wire[8][24]), .partial_sum_out(psum_wire[9][23]));
    PE_Wp57 pe_8_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][24]), .partial_sum_in(psum_wire[8][24]), .a_out(a_wire[8][25]), .partial_sum_out(psum_wire[9][24]));
    PE_Wp47 pe_8_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][25]), .partial_sum_in(psum_wire[8][25]), .a_out(a_wire[8][26]), .partial_sum_out(psum_wire[9][25]));
    PE_Wn3 pe_8_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][26]), .partial_sum_in(psum_wire[8][26]), .a_out(a_wire[8][27]), .partial_sum_out(psum_wire[9][26]));
    PE_Wn38 pe_8_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][27]), .partial_sum_in(psum_wire[8][27]), .a_out(a_wire[8][28]), .partial_sum_out(psum_wire[9][27]));
    PE_Wp0 pe_8_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][28]), .partial_sum_in(psum_wire[8][28]), .a_out(a_wire[8][29]), .partial_sum_out(psum_wire[9][28]));
    PE_Wn59 pe_8_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][29]), .partial_sum_in(psum_wire[8][29]), .a_out(a_wire[8][30]), .partial_sum_out(psum_wire[9][29]));
    PE_Wn66 pe_8_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][30]), .partial_sum_in(psum_wire[8][30]), .a_out(a_wire[8][31]), .partial_sum_out(psum_wire[9][30]));
    PE_Wp38 pe_8_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[8][31]), .partial_sum_in(psum_wire[8][31]), .a_out(a_wire[8][32]), .partial_sum_out(psum_wire[9][31]));
    PE_Wp12 pe_9_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][0]), .partial_sum_in(psum_wire[9][0]), .a_out(a_wire[9][1]), .partial_sum_out(psum_wire[10][0]));
    PE_Wn11 pe_9_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][1]), .partial_sum_in(psum_wire[9][1]), .a_out(a_wire[9][2]), .partial_sum_out(psum_wire[10][1]));
    PE_Wn9 pe_9_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][2]), .partial_sum_in(psum_wire[9][2]), .a_out(a_wire[9][3]), .partial_sum_out(psum_wire[10][2]));
    PE_Wp25 pe_9_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][3]), .partial_sum_in(psum_wire[9][3]), .a_out(a_wire[9][4]), .partial_sum_out(psum_wire[10][3]));
    PE_Wp88 pe_9_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][4]), .partial_sum_in(psum_wire[9][4]), .a_out(a_wire[9][5]), .partial_sum_out(psum_wire[10][4]));
    PE_Wp25 pe_9_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][5]), .partial_sum_in(psum_wire[9][5]), .a_out(a_wire[9][6]), .partial_sum_out(psum_wire[10][5]));
    PE_Wp54 pe_9_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][6]), .partial_sum_in(psum_wire[9][6]), .a_out(a_wire[9][7]), .partial_sum_out(psum_wire[10][6]));
    PE_Wn14 pe_9_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][7]), .partial_sum_in(psum_wire[9][7]), .a_out(a_wire[9][8]), .partial_sum_out(psum_wire[10][7]));
    PE_Wp10 pe_9_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][8]), .partial_sum_in(psum_wire[9][8]), .a_out(a_wire[9][9]), .partial_sum_out(psum_wire[10][8]));
    PE_Wp41 pe_9_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][9]), .partial_sum_in(psum_wire[9][9]), .a_out(a_wire[9][10]), .partial_sum_out(psum_wire[10][9]));
    PE_Wn47 pe_9_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][10]), .partial_sum_in(psum_wire[9][10]), .a_out(a_wire[9][11]), .partial_sum_out(psum_wire[10][10]));
    PE_Wp18 pe_9_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][11]), .partial_sum_in(psum_wire[9][11]), .a_out(a_wire[9][12]), .partial_sum_out(psum_wire[10][11]));
    PE_Wp35 pe_9_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][12]), .partial_sum_in(psum_wire[9][12]), .a_out(a_wire[9][13]), .partial_sum_out(psum_wire[10][12]));
    PE_Wp12 pe_9_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][13]), .partial_sum_in(psum_wire[9][13]), .a_out(a_wire[9][14]), .partial_sum_out(psum_wire[10][13]));
    PE_Wp33 pe_9_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][14]), .partial_sum_in(psum_wire[9][14]), .a_out(a_wire[9][15]), .partial_sum_out(psum_wire[10][14]));
    PE_Wp37 pe_9_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][15]), .partial_sum_in(psum_wire[9][15]), .a_out(a_wire[9][16]), .partial_sum_out(psum_wire[10][15]));
    PE_Wp72 pe_9_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][16]), .partial_sum_in(psum_wire[9][16]), .a_out(a_wire[9][17]), .partial_sum_out(psum_wire[10][16]));
    PE_Wp36 pe_9_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][17]), .partial_sum_in(psum_wire[9][17]), .a_out(a_wire[9][18]), .partial_sum_out(psum_wire[10][17]));
    PE_Wn43 pe_9_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][18]), .partial_sum_in(psum_wire[9][18]), .a_out(a_wire[9][19]), .partial_sum_out(psum_wire[10][18]));
    PE_Wp19 pe_9_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][19]), .partial_sum_in(psum_wire[9][19]), .a_out(a_wire[9][20]), .partial_sum_out(psum_wire[10][19]));
    PE_Wn80 pe_9_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][20]), .partial_sum_in(psum_wire[9][20]), .a_out(a_wire[9][21]), .partial_sum_out(psum_wire[10][20]));
    PE_Wp49 pe_9_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][21]), .partial_sum_in(psum_wire[9][21]), .a_out(a_wire[9][22]), .partial_sum_out(psum_wire[10][21]));
    PE_Wp17 pe_9_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][22]), .partial_sum_in(psum_wire[9][22]), .a_out(a_wire[9][23]), .partial_sum_out(psum_wire[10][22]));
    PE_Wp11 pe_9_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][23]), .partial_sum_in(psum_wire[9][23]), .a_out(a_wire[9][24]), .partial_sum_out(psum_wire[10][23]));
    PE_Wp23 pe_9_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][24]), .partial_sum_in(psum_wire[9][24]), .a_out(a_wire[9][25]), .partial_sum_out(psum_wire[10][24]));
    PE_Wn26 pe_9_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][25]), .partial_sum_in(psum_wire[9][25]), .a_out(a_wire[9][26]), .partial_sum_out(psum_wire[10][25]));
    PE_Wn11 pe_9_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][26]), .partial_sum_in(psum_wire[9][26]), .a_out(a_wire[9][27]), .partial_sum_out(psum_wire[10][26]));
    PE_Wn11 pe_9_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][27]), .partial_sum_in(psum_wire[9][27]), .a_out(a_wire[9][28]), .partial_sum_out(psum_wire[10][27]));
    PE_Wp33 pe_9_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][28]), .partial_sum_in(psum_wire[9][28]), .a_out(a_wire[9][29]), .partial_sum_out(psum_wire[10][28]));
    PE_Wn94 pe_9_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][29]), .partial_sum_in(psum_wire[9][29]), .a_out(a_wire[9][30]), .partial_sum_out(psum_wire[10][29]));
    PE_Wn49 pe_9_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][30]), .partial_sum_in(psum_wire[9][30]), .a_out(a_wire[9][31]), .partial_sum_out(psum_wire[10][30]));
    PE_Wn26 pe_9_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[9][31]), .partial_sum_in(psum_wire[9][31]), .a_out(a_wire[9][32]), .partial_sum_out(psum_wire[10][31]));
    PE_Wn12 pe_10_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][0]), .partial_sum_in(psum_wire[10][0]), .a_out(a_wire[10][1]), .partial_sum_out(psum_wire[11][0]));
    PE_Wp8 pe_10_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][1]), .partial_sum_in(psum_wire[10][1]), .a_out(a_wire[10][2]), .partial_sum_out(psum_wire[11][1]));
    PE_Wp17 pe_10_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][2]), .partial_sum_in(psum_wire[10][2]), .a_out(a_wire[10][3]), .partial_sum_out(psum_wire[11][2]));
    PE_Wp50 pe_10_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][3]), .partial_sum_in(psum_wire[10][3]), .a_out(a_wire[10][4]), .partial_sum_out(psum_wire[11][3]));
    PE_Wp13 pe_10_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][4]), .partial_sum_in(psum_wire[10][4]), .a_out(a_wire[10][5]), .partial_sum_out(psum_wire[11][4]));
    PE_Wp13 pe_10_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][5]), .partial_sum_in(psum_wire[10][5]), .a_out(a_wire[10][6]), .partial_sum_out(psum_wire[11][5]));
    PE_Wn71 pe_10_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][6]), .partial_sum_in(psum_wire[10][6]), .a_out(a_wire[10][7]), .partial_sum_out(psum_wire[11][6]));
    PE_Wp7 pe_10_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][7]), .partial_sum_in(psum_wire[10][7]), .a_out(a_wire[10][8]), .partial_sum_out(psum_wire[11][7]));
    PE_Wp24 pe_10_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][8]), .partial_sum_in(psum_wire[10][8]), .a_out(a_wire[10][9]), .partial_sum_out(psum_wire[11][8]));
    PE_Wn23 pe_10_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][9]), .partial_sum_in(psum_wire[10][9]), .a_out(a_wire[10][10]), .partial_sum_out(psum_wire[11][9]));
    PE_Wn26 pe_10_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][10]), .partial_sum_in(psum_wire[10][10]), .a_out(a_wire[10][11]), .partial_sum_out(psum_wire[11][10]));
    PE_Wn2 pe_10_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][11]), .partial_sum_in(psum_wire[10][11]), .a_out(a_wire[10][12]), .partial_sum_out(psum_wire[11][11]));
    PE_Wp23 pe_10_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][12]), .partial_sum_in(psum_wire[10][12]), .a_out(a_wire[10][13]), .partial_sum_out(psum_wire[11][12]));
    PE_Wn14 pe_10_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][13]), .partial_sum_in(psum_wire[10][13]), .a_out(a_wire[10][14]), .partial_sum_out(psum_wire[11][13]));
    PE_Wp31 pe_10_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][14]), .partial_sum_in(psum_wire[10][14]), .a_out(a_wire[10][15]), .partial_sum_out(psum_wire[11][14]));
    PE_Wn30 pe_10_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][15]), .partial_sum_in(psum_wire[10][15]), .a_out(a_wire[10][16]), .partial_sum_out(psum_wire[11][15]));
    PE_Wn19 pe_10_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][16]), .partial_sum_in(psum_wire[10][16]), .a_out(a_wire[10][17]), .partial_sum_out(psum_wire[11][16]));
    PE_Wn52 pe_10_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][17]), .partial_sum_in(psum_wire[10][17]), .a_out(a_wire[10][18]), .partial_sum_out(psum_wire[11][17]));
    PE_Wn41 pe_10_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][18]), .partial_sum_in(psum_wire[10][18]), .a_out(a_wire[10][19]), .partial_sum_out(psum_wire[11][18]));
    PE_Wn3 pe_10_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][19]), .partial_sum_in(psum_wire[10][19]), .a_out(a_wire[10][20]), .partial_sum_out(psum_wire[11][19]));
    PE_Wp6 pe_10_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][20]), .partial_sum_in(psum_wire[10][20]), .a_out(a_wire[10][21]), .partial_sum_out(psum_wire[11][20]));
    PE_Wp32 pe_10_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][21]), .partial_sum_in(psum_wire[10][21]), .a_out(a_wire[10][22]), .partial_sum_out(psum_wire[11][21]));
    PE_Wn13 pe_10_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][22]), .partial_sum_in(psum_wire[10][22]), .a_out(a_wire[10][23]), .partial_sum_out(psum_wire[11][22]));
    PE_Wp14 pe_10_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][23]), .partial_sum_in(psum_wire[10][23]), .a_out(a_wire[10][24]), .partial_sum_out(psum_wire[11][23]));
    PE_Wp18 pe_10_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][24]), .partial_sum_in(psum_wire[10][24]), .a_out(a_wire[10][25]), .partial_sum_out(psum_wire[11][24]));
    PE_Wn50 pe_10_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][25]), .partial_sum_in(psum_wire[10][25]), .a_out(a_wire[10][26]), .partial_sum_out(psum_wire[11][25]));
    PE_Wn21 pe_10_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][26]), .partial_sum_in(psum_wire[10][26]), .a_out(a_wire[10][27]), .partial_sum_out(psum_wire[11][26]));
    PE_Wp10 pe_10_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][27]), .partial_sum_in(psum_wire[10][27]), .a_out(a_wire[10][28]), .partial_sum_out(psum_wire[11][27]));
    PE_Wp6 pe_10_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][28]), .partial_sum_in(psum_wire[10][28]), .a_out(a_wire[10][29]), .partial_sum_out(psum_wire[11][28]));
    PE_Wn7 pe_10_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][29]), .partial_sum_in(psum_wire[10][29]), .a_out(a_wire[10][30]), .partial_sum_out(psum_wire[11][29]));
    PE_Wp53 pe_10_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][30]), .partial_sum_in(psum_wire[10][30]), .a_out(a_wire[10][31]), .partial_sum_out(psum_wire[11][30]));
    PE_Wn11 pe_10_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[10][31]), .partial_sum_in(psum_wire[10][31]), .a_out(a_wire[10][32]), .partial_sum_out(psum_wire[11][31]));
    PE_Wn22 pe_11_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][0]), .partial_sum_in(psum_wire[11][0]), .a_out(a_wire[11][1]), .partial_sum_out(psum_wire[12][0]));
    PE_Wn2 pe_11_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][1]), .partial_sum_in(psum_wire[11][1]), .a_out(a_wire[11][2]), .partial_sum_out(psum_wire[12][1]));
    PE_Wn41 pe_11_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][2]), .partial_sum_in(psum_wire[11][2]), .a_out(a_wire[11][3]), .partial_sum_out(psum_wire[12][2]));
    PE_Wp6 pe_11_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][3]), .partial_sum_in(psum_wire[11][3]), .a_out(a_wire[11][4]), .partial_sum_out(psum_wire[12][3]));
    PE_Wn25 pe_11_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][4]), .partial_sum_in(psum_wire[11][4]), .a_out(a_wire[11][5]), .partial_sum_out(psum_wire[12][4]));
    PE_Wn16 pe_11_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][5]), .partial_sum_in(psum_wire[11][5]), .a_out(a_wire[11][6]), .partial_sum_out(psum_wire[12][5]));
    PE_Wp4 pe_11_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][6]), .partial_sum_in(psum_wire[11][6]), .a_out(a_wire[11][7]), .partial_sum_out(psum_wire[12][6]));
    PE_Wp52 pe_11_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][7]), .partial_sum_in(psum_wire[11][7]), .a_out(a_wire[11][8]), .partial_sum_out(psum_wire[12][7]));
    PE_Wn6 pe_11_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][8]), .partial_sum_in(psum_wire[11][8]), .a_out(a_wire[11][9]), .partial_sum_out(psum_wire[12][8]));
    PE_Wp38 pe_11_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][9]), .partial_sum_in(psum_wire[11][9]), .a_out(a_wire[11][10]), .partial_sum_out(psum_wire[12][9]));
    PE_Wn61 pe_11_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][10]), .partial_sum_in(psum_wire[11][10]), .a_out(a_wire[11][11]), .partial_sum_out(psum_wire[12][10]));
    PE_Wn5 pe_11_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][11]), .partial_sum_in(psum_wire[11][11]), .a_out(a_wire[11][12]), .partial_sum_out(psum_wire[12][11]));
    PE_Wp76 pe_11_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][12]), .partial_sum_in(psum_wire[11][12]), .a_out(a_wire[11][13]), .partial_sum_out(psum_wire[12][12]));
    PE_Wp7 pe_11_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][13]), .partial_sum_in(psum_wire[11][13]), .a_out(a_wire[11][14]), .partial_sum_out(psum_wire[12][13]));
    PE_Wp31 pe_11_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][14]), .partial_sum_in(psum_wire[11][14]), .a_out(a_wire[11][15]), .partial_sum_out(psum_wire[12][14]));
    PE_Wp36 pe_11_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][15]), .partial_sum_in(psum_wire[11][15]), .a_out(a_wire[11][16]), .partial_sum_out(psum_wire[12][15]));
    PE_Wn2 pe_11_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][16]), .partial_sum_in(psum_wire[11][16]), .a_out(a_wire[11][17]), .partial_sum_out(psum_wire[12][16]));
    PE_Wp44 pe_11_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][17]), .partial_sum_in(psum_wire[11][17]), .a_out(a_wire[11][18]), .partial_sum_out(psum_wire[12][17]));
    PE_Wn60 pe_11_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][18]), .partial_sum_in(psum_wire[11][18]), .a_out(a_wire[11][19]), .partial_sum_out(psum_wire[12][18]));
    PE_Wp4 pe_11_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][19]), .partial_sum_in(psum_wire[11][19]), .a_out(a_wire[11][20]), .partial_sum_out(psum_wire[12][19]));
    PE_Wn36 pe_11_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][20]), .partial_sum_in(psum_wire[11][20]), .a_out(a_wire[11][21]), .partial_sum_out(psum_wire[12][20]));
    PE_Wn32 pe_11_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][21]), .partial_sum_in(psum_wire[11][21]), .a_out(a_wire[11][22]), .partial_sum_out(psum_wire[12][21]));
    PE_Wp5 pe_11_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][22]), .partial_sum_in(psum_wire[11][22]), .a_out(a_wire[11][23]), .partial_sum_out(psum_wire[12][22]));
    PE_Wp37 pe_11_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][23]), .partial_sum_in(psum_wire[11][23]), .a_out(a_wire[11][24]), .partial_sum_out(psum_wire[12][23]));
    PE_Wn85 pe_11_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][24]), .partial_sum_in(psum_wire[11][24]), .a_out(a_wire[11][25]), .partial_sum_out(psum_wire[12][24]));
    PE_Wp4 pe_11_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][25]), .partial_sum_in(psum_wire[11][25]), .a_out(a_wire[11][26]), .partial_sum_out(psum_wire[12][25]));
    PE_Wp0 pe_11_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][26]), .partial_sum_in(psum_wire[11][26]), .a_out(a_wire[11][27]), .partial_sum_out(psum_wire[12][26]));
    PE_Wp28 pe_11_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][27]), .partial_sum_in(psum_wire[11][27]), .a_out(a_wire[11][28]), .partial_sum_out(psum_wire[12][27]));
    PE_Wp4 pe_11_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][28]), .partial_sum_in(psum_wire[11][28]), .a_out(a_wire[11][29]), .partial_sum_out(psum_wire[12][28]));
    PE_Wp86 pe_11_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][29]), .partial_sum_in(psum_wire[11][29]), .a_out(a_wire[11][30]), .partial_sum_out(psum_wire[12][29]));
    PE_Wp24 pe_11_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][30]), .partial_sum_in(psum_wire[11][30]), .a_out(a_wire[11][31]), .partial_sum_out(psum_wire[12][30]));
    PE_Wn25 pe_11_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[11][31]), .partial_sum_in(psum_wire[11][31]), .a_out(a_wire[11][32]), .partial_sum_out(psum_wire[12][31]));
    PE_Wp1 pe_12_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][0]), .partial_sum_in(psum_wire[12][0]), .a_out(a_wire[12][1]), .partial_sum_out(psum_wire[13][0]));
    PE_Wp5 pe_12_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][1]), .partial_sum_in(psum_wire[12][1]), .a_out(a_wire[12][2]), .partial_sum_out(psum_wire[13][1]));
    PE_Wn41 pe_12_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][2]), .partial_sum_in(psum_wire[12][2]), .a_out(a_wire[12][3]), .partial_sum_out(psum_wire[13][2]));
    PE_Wp40 pe_12_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][3]), .partial_sum_in(psum_wire[12][3]), .a_out(a_wire[12][4]), .partial_sum_out(psum_wire[13][3]));
    PE_Wn53 pe_12_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][4]), .partial_sum_in(psum_wire[12][4]), .a_out(a_wire[12][5]), .partial_sum_out(psum_wire[13][4]));
    PE_Wp2 pe_12_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][5]), .partial_sum_in(psum_wire[12][5]), .a_out(a_wire[12][6]), .partial_sum_out(psum_wire[13][5]));
    PE_Wp97 pe_12_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][6]), .partial_sum_in(psum_wire[12][6]), .a_out(a_wire[12][7]), .partial_sum_out(psum_wire[13][6]));
    PE_Wp7 pe_12_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][7]), .partial_sum_in(psum_wire[12][7]), .a_out(a_wire[12][8]), .partial_sum_out(psum_wire[13][7]));
    PE_Wn28 pe_12_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][8]), .partial_sum_in(psum_wire[12][8]), .a_out(a_wire[12][9]), .partial_sum_out(psum_wire[13][8]));
    PE_Wp3 pe_12_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][9]), .partial_sum_in(psum_wire[12][9]), .a_out(a_wire[12][10]), .partial_sum_out(psum_wire[13][9]));
    PE_Wp127 pe_12_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][10]), .partial_sum_in(psum_wire[12][10]), .a_out(a_wire[12][11]), .partial_sum_out(psum_wire[13][10]));
    PE_Wp10 pe_12_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][11]), .partial_sum_in(psum_wire[12][11]), .a_out(a_wire[12][12]), .partial_sum_out(psum_wire[13][11]));
    PE_Wp0 pe_12_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][12]), .partial_sum_in(psum_wire[12][12]), .a_out(a_wire[12][13]), .partial_sum_out(psum_wire[13][12]));
    PE_Wn7 pe_12_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][13]), .partial_sum_in(psum_wire[12][13]), .a_out(a_wire[12][14]), .partial_sum_out(psum_wire[13][13]));
    PE_Wp51 pe_12_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][14]), .partial_sum_in(psum_wire[12][14]), .a_out(a_wire[12][15]), .partial_sum_out(psum_wire[13][14]));
    PE_Wn17 pe_12_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][15]), .partial_sum_in(psum_wire[12][15]), .a_out(a_wire[12][16]), .partial_sum_out(psum_wire[13][15]));
    PE_Wp11 pe_12_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][16]), .partial_sum_in(psum_wire[12][16]), .a_out(a_wire[12][17]), .partial_sum_out(psum_wire[13][16]));
    PE_Wn18 pe_12_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][17]), .partial_sum_in(psum_wire[12][17]), .a_out(a_wire[12][18]), .partial_sum_out(psum_wire[13][17]));
    PE_Wp33 pe_12_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][18]), .partial_sum_in(psum_wire[12][18]), .a_out(a_wire[12][19]), .partial_sum_out(psum_wire[13][18]));
    PE_Wp1 pe_12_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][19]), .partial_sum_in(psum_wire[12][19]), .a_out(a_wire[12][20]), .partial_sum_out(psum_wire[13][19]));
    PE_Wp40 pe_12_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][20]), .partial_sum_in(psum_wire[12][20]), .a_out(a_wire[12][21]), .partial_sum_out(psum_wire[13][20]));
    PE_Wp67 pe_12_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][21]), .partial_sum_in(psum_wire[12][21]), .a_out(a_wire[12][22]), .partial_sum_out(psum_wire[13][21]));
    PE_Wp42 pe_12_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][22]), .partial_sum_in(psum_wire[12][22]), .a_out(a_wire[12][23]), .partial_sum_out(psum_wire[13][22]));
    PE_Wp38 pe_12_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][23]), .partial_sum_in(psum_wire[12][23]), .a_out(a_wire[12][24]), .partial_sum_out(psum_wire[13][23]));
    PE_Wn52 pe_12_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][24]), .partial_sum_in(psum_wire[12][24]), .a_out(a_wire[12][25]), .partial_sum_out(psum_wire[13][24]));
    PE_Wp13 pe_12_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][25]), .partial_sum_in(psum_wire[12][25]), .a_out(a_wire[12][26]), .partial_sum_out(psum_wire[13][25]));
    PE_Wn35 pe_12_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][26]), .partial_sum_in(psum_wire[12][26]), .a_out(a_wire[12][27]), .partial_sum_out(psum_wire[13][26]));
    PE_Wn2 pe_12_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][27]), .partial_sum_in(psum_wire[12][27]), .a_out(a_wire[12][28]), .partial_sum_out(psum_wire[13][27]));
    PE_Wn51 pe_12_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][28]), .partial_sum_in(psum_wire[12][28]), .a_out(a_wire[12][29]), .partial_sum_out(psum_wire[13][28]));
    PE_Wn1 pe_12_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][29]), .partial_sum_in(psum_wire[12][29]), .a_out(a_wire[12][30]), .partial_sum_out(psum_wire[13][29]));
    PE_Wn22 pe_12_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][30]), .partial_sum_in(psum_wire[12][30]), .a_out(a_wire[12][31]), .partial_sum_out(psum_wire[13][30]));
    PE_Wn28 pe_12_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[12][31]), .partial_sum_in(psum_wire[12][31]), .a_out(a_wire[12][32]), .partial_sum_out(psum_wire[13][31]));
    PE_Wp12 pe_13_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][0]), .partial_sum_in(psum_wire[13][0]), .a_out(a_wire[13][1]), .partial_sum_out(psum_wire[14][0]));
    PE_Wp74 pe_13_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][1]), .partial_sum_in(psum_wire[13][1]), .a_out(a_wire[13][2]), .partial_sum_out(psum_wire[14][1]));
    PE_Wp36 pe_13_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][2]), .partial_sum_in(psum_wire[13][2]), .a_out(a_wire[13][3]), .partial_sum_out(psum_wire[14][2]));
    PE_Wp25 pe_13_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][3]), .partial_sum_in(psum_wire[13][3]), .a_out(a_wire[13][4]), .partial_sum_out(psum_wire[14][3]));
    PE_Wp42 pe_13_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][4]), .partial_sum_in(psum_wire[13][4]), .a_out(a_wire[13][5]), .partial_sum_out(psum_wire[14][4]));
    PE_Wp10 pe_13_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][5]), .partial_sum_in(psum_wire[13][5]), .a_out(a_wire[13][6]), .partial_sum_out(psum_wire[14][5]));
    PE_Wn95 pe_13_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][6]), .partial_sum_in(psum_wire[13][6]), .a_out(a_wire[13][7]), .partial_sum_out(psum_wire[14][6]));
    PE_Wn13 pe_13_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][7]), .partial_sum_in(psum_wire[13][7]), .a_out(a_wire[13][8]), .partial_sum_out(psum_wire[14][7]));
    PE_Wn3 pe_13_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][8]), .partial_sum_in(psum_wire[13][8]), .a_out(a_wire[13][9]), .partial_sum_out(psum_wire[14][8]));
    PE_Wp25 pe_13_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][9]), .partial_sum_in(psum_wire[13][9]), .a_out(a_wire[13][10]), .partial_sum_out(psum_wire[14][9]));
    PE_Wn29 pe_13_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][10]), .partial_sum_in(psum_wire[13][10]), .a_out(a_wire[13][11]), .partial_sum_out(psum_wire[14][10]));
    PE_Wp2 pe_13_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][11]), .partial_sum_in(psum_wire[13][11]), .a_out(a_wire[13][12]), .partial_sum_out(psum_wire[14][11]));
    PE_Wn31 pe_13_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][12]), .partial_sum_in(psum_wire[13][12]), .a_out(a_wire[13][13]), .partial_sum_out(psum_wire[14][12]));
    PE_Wp37 pe_13_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][13]), .partial_sum_in(psum_wire[13][13]), .a_out(a_wire[13][14]), .partial_sum_out(psum_wire[14][13]));
    PE_Wn50 pe_13_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][14]), .partial_sum_in(psum_wire[13][14]), .a_out(a_wire[13][15]), .partial_sum_out(psum_wire[14][14]));
    PE_Wn10 pe_13_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][15]), .partial_sum_in(psum_wire[13][15]), .a_out(a_wire[13][16]), .partial_sum_out(psum_wire[14][15]));
    PE_Wn37 pe_13_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][16]), .partial_sum_in(psum_wire[13][16]), .a_out(a_wire[13][17]), .partial_sum_out(psum_wire[14][16]));
    PE_Wn3 pe_13_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][17]), .partial_sum_in(psum_wire[13][17]), .a_out(a_wire[13][18]), .partial_sum_out(psum_wire[14][17]));
    PE_Wn3 pe_13_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][18]), .partial_sum_in(psum_wire[13][18]), .a_out(a_wire[13][19]), .partial_sum_out(psum_wire[14][18]));
    PE_Wp22 pe_13_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][19]), .partial_sum_in(psum_wire[13][19]), .a_out(a_wire[13][20]), .partial_sum_out(psum_wire[14][19]));
    PE_Wn56 pe_13_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][20]), .partial_sum_in(psum_wire[13][20]), .a_out(a_wire[13][21]), .partial_sum_out(psum_wire[14][20]));
    PE_Wn27 pe_13_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][21]), .partial_sum_in(psum_wire[13][21]), .a_out(a_wire[13][22]), .partial_sum_out(psum_wire[14][21]));
    PE_Wp6 pe_13_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][22]), .partial_sum_in(psum_wire[13][22]), .a_out(a_wire[13][23]), .partial_sum_out(psum_wire[14][22]));
    PE_Wp4 pe_13_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][23]), .partial_sum_in(psum_wire[13][23]), .a_out(a_wire[13][24]), .partial_sum_out(psum_wire[14][23]));
    PE_Wp70 pe_13_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][24]), .partial_sum_in(psum_wire[13][24]), .a_out(a_wire[13][25]), .partial_sum_out(psum_wire[14][24]));
    PE_Wn36 pe_13_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][25]), .partial_sum_in(psum_wire[13][25]), .a_out(a_wire[13][26]), .partial_sum_out(psum_wire[14][25]));
    PE_Wn15 pe_13_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][26]), .partial_sum_in(psum_wire[13][26]), .a_out(a_wire[13][27]), .partial_sum_out(psum_wire[14][26]));
    PE_Wp21 pe_13_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][27]), .partial_sum_in(psum_wire[13][27]), .a_out(a_wire[13][28]), .partial_sum_out(psum_wire[14][27]));
    PE_Wp17 pe_13_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][28]), .partial_sum_in(psum_wire[13][28]), .a_out(a_wire[13][29]), .partial_sum_out(psum_wire[14][28]));
    PE_Wn40 pe_13_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][29]), .partial_sum_in(psum_wire[13][29]), .a_out(a_wire[13][30]), .partial_sum_out(psum_wire[14][29]));
    PE_Wn92 pe_13_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][30]), .partial_sum_in(psum_wire[13][30]), .a_out(a_wire[13][31]), .partial_sum_out(psum_wire[14][30]));
    PE_Wn8 pe_13_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[13][31]), .partial_sum_in(psum_wire[13][31]), .a_out(a_wire[13][32]), .partial_sum_out(psum_wire[14][31]));
    PE_Wp34 pe_14_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][0]), .partial_sum_in(psum_wire[14][0]), .a_out(a_wire[14][1]), .partial_sum_out(psum_wire[15][0]));
    PE_Wn19 pe_14_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][1]), .partial_sum_in(psum_wire[14][1]), .a_out(a_wire[14][2]), .partial_sum_out(psum_wire[15][1]));
    PE_Wn7 pe_14_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][2]), .partial_sum_in(psum_wire[14][2]), .a_out(a_wire[14][3]), .partial_sum_out(psum_wire[15][2]));
    PE_Wp12 pe_14_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][3]), .partial_sum_in(psum_wire[14][3]), .a_out(a_wire[14][4]), .partial_sum_out(psum_wire[15][3]));
    PE_Wn17 pe_14_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][4]), .partial_sum_in(psum_wire[14][4]), .a_out(a_wire[14][5]), .partial_sum_out(psum_wire[15][4]));
    PE_Wp41 pe_14_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][5]), .partial_sum_in(psum_wire[14][5]), .a_out(a_wire[14][6]), .partial_sum_out(psum_wire[15][5]));
    PE_Wp32 pe_14_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][6]), .partial_sum_in(psum_wire[14][6]), .a_out(a_wire[14][7]), .partial_sum_out(psum_wire[15][6]));
    PE_Wp42 pe_14_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][7]), .partial_sum_in(psum_wire[14][7]), .a_out(a_wire[14][8]), .partial_sum_out(psum_wire[15][7]));
    PE_Wn15 pe_14_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][8]), .partial_sum_in(psum_wire[14][8]), .a_out(a_wire[14][9]), .partial_sum_out(psum_wire[15][8]));
    PE_Wn18 pe_14_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][9]), .partial_sum_in(psum_wire[14][9]), .a_out(a_wire[14][10]), .partial_sum_out(psum_wire[15][9]));
    PE_Wn2 pe_14_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][10]), .partial_sum_in(psum_wire[14][10]), .a_out(a_wire[14][11]), .partial_sum_out(psum_wire[15][10]));
    PE_Wn9 pe_14_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][11]), .partial_sum_in(psum_wire[14][11]), .a_out(a_wire[14][12]), .partial_sum_out(psum_wire[15][11]));
    PE_Wn20 pe_14_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][12]), .partial_sum_in(psum_wire[14][12]), .a_out(a_wire[14][13]), .partial_sum_out(psum_wire[15][12]));
    PE_Wn60 pe_14_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][13]), .partial_sum_in(psum_wire[14][13]), .a_out(a_wire[14][14]), .partial_sum_out(psum_wire[15][13]));
    PE_Wn37 pe_14_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][14]), .partial_sum_in(psum_wire[14][14]), .a_out(a_wire[14][15]), .partial_sum_out(psum_wire[15][14]));
    PE_Wn42 pe_14_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][15]), .partial_sum_in(psum_wire[14][15]), .a_out(a_wire[14][16]), .partial_sum_out(psum_wire[15][15]));
    PE_Wp10 pe_14_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][16]), .partial_sum_in(psum_wire[14][16]), .a_out(a_wire[14][17]), .partial_sum_out(psum_wire[15][16]));
    PE_Wn57 pe_14_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][17]), .partial_sum_in(psum_wire[14][17]), .a_out(a_wire[14][18]), .partial_sum_out(psum_wire[15][17]));
    PE_Wn37 pe_14_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][18]), .partial_sum_in(psum_wire[14][18]), .a_out(a_wire[14][19]), .partial_sum_out(psum_wire[15][18]));
    PE_Wn7 pe_14_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][19]), .partial_sum_in(psum_wire[14][19]), .a_out(a_wire[14][20]), .partial_sum_out(psum_wire[15][19]));
    PE_Wp43 pe_14_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][20]), .partial_sum_in(psum_wire[14][20]), .a_out(a_wire[14][21]), .partial_sum_out(psum_wire[15][20]));
    PE_Wn45 pe_14_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][21]), .partial_sum_in(psum_wire[14][21]), .a_out(a_wire[14][22]), .partial_sum_out(psum_wire[15][21]));
    PE_Wn32 pe_14_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][22]), .partial_sum_in(psum_wire[14][22]), .a_out(a_wire[14][23]), .partial_sum_out(psum_wire[15][22]));
    PE_Wn8 pe_14_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][23]), .partial_sum_in(psum_wire[14][23]), .a_out(a_wire[14][24]), .partial_sum_out(psum_wire[15][23]));
    PE_Wp52 pe_14_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][24]), .partial_sum_in(psum_wire[14][24]), .a_out(a_wire[14][25]), .partial_sum_out(psum_wire[15][24]));
    PE_Wn15 pe_14_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][25]), .partial_sum_in(psum_wire[14][25]), .a_out(a_wire[14][26]), .partial_sum_out(psum_wire[15][25]));
    PE_Wn3 pe_14_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][26]), .partial_sum_in(psum_wire[14][26]), .a_out(a_wire[14][27]), .partial_sum_out(psum_wire[15][26]));
    PE_Wn1 pe_14_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][27]), .partial_sum_in(psum_wire[14][27]), .a_out(a_wire[14][28]), .partial_sum_out(psum_wire[15][27]));
    PE_Wn14 pe_14_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][28]), .partial_sum_in(psum_wire[14][28]), .a_out(a_wire[14][29]), .partial_sum_out(psum_wire[15][28]));
    PE_Wn9 pe_14_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][29]), .partial_sum_in(psum_wire[14][29]), .a_out(a_wire[14][30]), .partial_sum_out(psum_wire[15][29]));
    PE_Wn62 pe_14_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][30]), .partial_sum_in(psum_wire[14][30]), .a_out(a_wire[14][31]), .partial_sum_out(psum_wire[15][30]));
    PE_Wn26 pe_14_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[14][31]), .partial_sum_in(psum_wire[14][31]), .a_out(a_wire[14][32]), .partial_sum_out(psum_wire[15][31]));
    PE_Wn40 pe_15_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][0]), .partial_sum_in(psum_wire[15][0]), .a_out(a_wire[15][1]), .partial_sum_out(psum_wire[16][0]));
    PE_Wn19 pe_15_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][1]), .partial_sum_in(psum_wire[15][1]), .a_out(a_wire[15][2]), .partial_sum_out(psum_wire[16][1]));
    PE_Wp8 pe_15_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][2]), .partial_sum_in(psum_wire[15][2]), .a_out(a_wire[15][3]), .partial_sum_out(psum_wire[16][2]));
    PE_Wn10 pe_15_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][3]), .partial_sum_in(psum_wire[15][3]), .a_out(a_wire[15][4]), .partial_sum_out(psum_wire[16][3]));
    PE_Wp51 pe_15_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][4]), .partial_sum_in(psum_wire[15][4]), .a_out(a_wire[15][5]), .partial_sum_out(psum_wire[16][4]));
    PE_Wn16 pe_15_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][5]), .partial_sum_in(psum_wire[15][5]), .a_out(a_wire[15][6]), .partial_sum_out(psum_wire[16][5]));
    PE_Wp22 pe_15_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][6]), .partial_sum_in(psum_wire[15][6]), .a_out(a_wire[15][7]), .partial_sum_out(psum_wire[16][6]));
    PE_Wn95 pe_15_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][7]), .partial_sum_in(psum_wire[15][7]), .a_out(a_wire[15][8]), .partial_sum_out(psum_wire[16][7]));
    PE_Wp13 pe_15_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][8]), .partial_sum_in(psum_wire[15][8]), .a_out(a_wire[15][9]), .partial_sum_out(psum_wire[16][8]));
    PE_Wn14 pe_15_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][9]), .partial_sum_in(psum_wire[15][9]), .a_out(a_wire[15][10]), .partial_sum_out(psum_wire[16][9]));
    PE_Wp0 pe_15_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][10]), .partial_sum_in(psum_wire[15][10]), .a_out(a_wire[15][11]), .partial_sum_out(psum_wire[16][10]));
    PE_Wn23 pe_15_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][11]), .partial_sum_in(psum_wire[15][11]), .a_out(a_wire[15][12]), .partial_sum_out(psum_wire[16][11]));
    PE_Wp17 pe_15_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][12]), .partial_sum_in(psum_wire[15][12]), .a_out(a_wire[15][13]), .partial_sum_out(psum_wire[16][12]));
    PE_Wp37 pe_15_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][13]), .partial_sum_in(psum_wire[15][13]), .a_out(a_wire[15][14]), .partial_sum_out(psum_wire[16][13]));
    PE_Wp12 pe_15_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][14]), .partial_sum_in(psum_wire[15][14]), .a_out(a_wire[15][15]), .partial_sum_out(psum_wire[16][14]));
    PE_Wn20 pe_15_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][15]), .partial_sum_in(psum_wire[15][15]), .a_out(a_wire[15][16]), .partial_sum_out(psum_wire[16][15]));
    PE_Wp22 pe_15_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][16]), .partial_sum_in(psum_wire[15][16]), .a_out(a_wire[15][17]), .partial_sum_out(psum_wire[16][16]));
    PE_Wn2 pe_15_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][17]), .partial_sum_in(psum_wire[15][17]), .a_out(a_wire[15][18]), .partial_sum_out(psum_wire[16][17]));
    PE_Wp17 pe_15_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][18]), .partial_sum_in(psum_wire[15][18]), .a_out(a_wire[15][19]), .partial_sum_out(psum_wire[16][18]));
    PE_Wp24 pe_15_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][19]), .partial_sum_in(psum_wire[15][19]), .a_out(a_wire[15][20]), .partial_sum_out(psum_wire[16][19]));
    PE_Wp17 pe_15_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][20]), .partial_sum_in(psum_wire[15][20]), .a_out(a_wire[15][21]), .partial_sum_out(psum_wire[16][20]));
    PE_Wn5 pe_15_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][21]), .partial_sum_in(psum_wire[15][21]), .a_out(a_wire[15][22]), .partial_sum_out(psum_wire[16][21]));
    PE_Wp35 pe_15_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][22]), .partial_sum_in(psum_wire[15][22]), .a_out(a_wire[15][23]), .partial_sum_out(psum_wire[16][22]));
    PE_Wp19 pe_15_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][23]), .partial_sum_in(psum_wire[15][23]), .a_out(a_wire[15][24]), .partial_sum_out(psum_wire[16][23]));
    PE_Wp19 pe_15_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][24]), .partial_sum_in(psum_wire[15][24]), .a_out(a_wire[15][25]), .partial_sum_out(psum_wire[16][24]));
    PE_Wp5 pe_15_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][25]), .partial_sum_in(psum_wire[15][25]), .a_out(a_wire[15][26]), .partial_sum_out(psum_wire[16][25]));
    PE_Wp11 pe_15_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][26]), .partial_sum_in(psum_wire[15][26]), .a_out(a_wire[15][27]), .partial_sum_out(psum_wire[16][26]));
    PE_Wn7 pe_15_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][27]), .partial_sum_in(psum_wire[15][27]), .a_out(a_wire[15][28]), .partial_sum_out(psum_wire[16][27]));
    PE_Wp33 pe_15_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][28]), .partial_sum_in(psum_wire[15][28]), .a_out(a_wire[15][29]), .partial_sum_out(psum_wire[16][28]));
    PE_Wp6 pe_15_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][29]), .partial_sum_in(psum_wire[15][29]), .a_out(a_wire[15][30]), .partial_sum_out(psum_wire[16][29]));
    PE_Wn76 pe_15_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][30]), .partial_sum_in(psum_wire[15][30]), .a_out(a_wire[15][31]), .partial_sum_out(psum_wire[16][30]));
    PE_Wp1 pe_15_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[15][31]), .partial_sum_in(psum_wire[15][31]), .a_out(a_wire[15][32]), .partial_sum_out(psum_wire[16][31]));
    PE_Wn37 pe_16_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][0]), .partial_sum_in(psum_wire[16][0]), .a_out(a_wire[16][1]), .partial_sum_out(psum_wire[17][0]));
    PE_Wn32 pe_16_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][1]), .partial_sum_in(psum_wire[16][1]), .a_out(a_wire[16][2]), .partial_sum_out(psum_wire[17][1]));
    PE_Wp21 pe_16_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][2]), .partial_sum_in(psum_wire[16][2]), .a_out(a_wire[16][3]), .partial_sum_out(psum_wire[17][2]));
    PE_Wn61 pe_16_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][3]), .partial_sum_in(psum_wire[16][3]), .a_out(a_wire[16][4]), .partial_sum_out(psum_wire[17][3]));
    PE_Wp5 pe_16_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][4]), .partial_sum_in(psum_wire[16][4]), .a_out(a_wire[16][5]), .partial_sum_out(psum_wire[17][4]));
    PE_Wn8 pe_16_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][5]), .partial_sum_in(psum_wire[16][5]), .a_out(a_wire[16][6]), .partial_sum_out(psum_wire[17][5]));
    PE_Wn4 pe_16_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][6]), .partial_sum_in(psum_wire[16][6]), .a_out(a_wire[16][7]), .partial_sum_out(psum_wire[17][6]));
    PE_Wp4 pe_16_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][7]), .partial_sum_in(psum_wire[16][7]), .a_out(a_wire[16][8]), .partial_sum_out(psum_wire[17][7]));
    PE_Wp44 pe_16_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][8]), .partial_sum_in(psum_wire[16][8]), .a_out(a_wire[16][9]), .partial_sum_out(psum_wire[17][8]));
    PE_Wn59 pe_16_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][9]), .partial_sum_in(psum_wire[16][9]), .a_out(a_wire[16][10]), .partial_sum_out(psum_wire[17][9]));
    PE_Wp46 pe_16_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][10]), .partial_sum_in(psum_wire[16][10]), .a_out(a_wire[16][11]), .partial_sum_out(psum_wire[17][10]));
    PE_Wp43 pe_16_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][11]), .partial_sum_in(psum_wire[16][11]), .a_out(a_wire[16][12]), .partial_sum_out(psum_wire[17][11]));
    PE_Wn14 pe_16_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][12]), .partial_sum_in(psum_wire[16][12]), .a_out(a_wire[16][13]), .partial_sum_out(psum_wire[17][12]));
    PE_Wp51 pe_16_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][13]), .partial_sum_in(psum_wire[16][13]), .a_out(a_wire[16][14]), .partial_sum_out(psum_wire[17][13]));
    PE_Wp6 pe_16_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][14]), .partial_sum_in(psum_wire[16][14]), .a_out(a_wire[16][15]), .partial_sum_out(psum_wire[17][14]));
    PE_Wp21 pe_16_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][15]), .partial_sum_in(psum_wire[16][15]), .a_out(a_wire[16][16]), .partial_sum_out(psum_wire[17][15]));
    PE_Wp41 pe_16_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][16]), .partial_sum_in(psum_wire[16][16]), .a_out(a_wire[16][17]), .partial_sum_out(psum_wire[17][16]));
    PE_Wn5 pe_16_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][17]), .partial_sum_in(psum_wire[16][17]), .a_out(a_wire[16][18]), .partial_sum_out(psum_wire[17][17]));
    PE_Wn71 pe_16_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][18]), .partial_sum_in(psum_wire[16][18]), .a_out(a_wire[16][19]), .partial_sum_out(psum_wire[17][18]));
    PE_Wn20 pe_16_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][19]), .partial_sum_in(psum_wire[16][19]), .a_out(a_wire[16][20]), .partial_sum_out(psum_wire[17][19]));
    PE_Wn53 pe_16_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][20]), .partial_sum_in(psum_wire[16][20]), .a_out(a_wire[16][21]), .partial_sum_out(psum_wire[17][20]));
    PE_Wp31 pe_16_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][21]), .partial_sum_in(psum_wire[16][21]), .a_out(a_wire[16][22]), .partial_sum_out(psum_wire[17][21]));
    PE_Wn30 pe_16_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][22]), .partial_sum_in(psum_wire[16][22]), .a_out(a_wire[16][23]), .partial_sum_out(psum_wire[17][22]));
    PE_Wn34 pe_16_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][23]), .partial_sum_in(psum_wire[16][23]), .a_out(a_wire[16][24]), .partial_sum_out(psum_wire[17][23]));
    PE_Wn57 pe_16_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][24]), .partial_sum_in(psum_wire[16][24]), .a_out(a_wire[16][25]), .partial_sum_out(psum_wire[17][24]));
    PE_Wn5 pe_16_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][25]), .partial_sum_in(psum_wire[16][25]), .a_out(a_wire[16][26]), .partial_sum_out(psum_wire[17][25]));
    PE_Wn23 pe_16_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][26]), .partial_sum_in(psum_wire[16][26]), .a_out(a_wire[16][27]), .partial_sum_out(psum_wire[17][26]));
    PE_Wp39 pe_16_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][27]), .partial_sum_in(psum_wire[16][27]), .a_out(a_wire[16][28]), .partial_sum_out(psum_wire[17][27]));
    PE_Wp32 pe_16_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][28]), .partial_sum_in(psum_wire[16][28]), .a_out(a_wire[16][29]), .partial_sum_out(psum_wire[17][28]));
    PE_Wn35 pe_16_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][29]), .partial_sum_in(psum_wire[16][29]), .a_out(a_wire[16][30]), .partial_sum_out(psum_wire[17][29]));
    PE_Wn6 pe_16_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][30]), .partial_sum_in(psum_wire[16][30]), .a_out(a_wire[16][31]), .partial_sum_out(psum_wire[17][30]));
    PE_Wn18 pe_16_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[16][31]), .partial_sum_in(psum_wire[16][31]), .a_out(a_wire[16][32]), .partial_sum_out(psum_wire[17][31]));
    PE_Wn12 pe_17_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][0]), .partial_sum_in(psum_wire[17][0]), .a_out(a_wire[17][1]), .partial_sum_out(psum_wire[18][0]));
    PE_Wn14 pe_17_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][1]), .partial_sum_in(psum_wire[17][1]), .a_out(a_wire[17][2]), .partial_sum_out(psum_wire[18][1]));
    PE_Wp13 pe_17_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][2]), .partial_sum_in(psum_wire[17][2]), .a_out(a_wire[17][3]), .partial_sum_out(psum_wire[18][2]));
    PE_Wp19 pe_17_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][3]), .partial_sum_in(psum_wire[17][3]), .a_out(a_wire[17][4]), .partial_sum_out(psum_wire[18][3]));
    PE_Wn16 pe_17_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][4]), .partial_sum_in(psum_wire[17][4]), .a_out(a_wire[17][5]), .partial_sum_out(psum_wire[18][4]));
    PE_Wp16 pe_17_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][5]), .partial_sum_in(psum_wire[17][5]), .a_out(a_wire[17][6]), .partial_sum_out(psum_wire[18][5]));
    PE_Wn25 pe_17_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][6]), .partial_sum_in(psum_wire[17][6]), .a_out(a_wire[17][7]), .partial_sum_out(psum_wire[18][6]));
    PE_Wn42 pe_17_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][7]), .partial_sum_in(psum_wire[17][7]), .a_out(a_wire[17][8]), .partial_sum_out(psum_wire[18][7]));
    PE_Wp17 pe_17_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][8]), .partial_sum_in(psum_wire[17][8]), .a_out(a_wire[17][9]), .partial_sum_out(psum_wire[18][8]));
    PE_Wp6 pe_17_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][9]), .partial_sum_in(psum_wire[17][9]), .a_out(a_wire[17][10]), .partial_sum_out(psum_wire[18][9]));
    PE_Wn29 pe_17_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][10]), .partial_sum_in(psum_wire[17][10]), .a_out(a_wire[17][11]), .partial_sum_out(psum_wire[18][10]));
    PE_Wp7 pe_17_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][11]), .partial_sum_in(psum_wire[17][11]), .a_out(a_wire[17][12]), .partial_sum_out(psum_wire[18][11]));
    PE_Wn21 pe_17_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][12]), .partial_sum_in(psum_wire[17][12]), .a_out(a_wire[17][13]), .partial_sum_out(psum_wire[18][12]));
    PE_Wn6 pe_17_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][13]), .partial_sum_in(psum_wire[17][13]), .a_out(a_wire[17][14]), .partial_sum_out(psum_wire[18][13]));
    PE_Wn18 pe_17_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][14]), .partial_sum_in(psum_wire[17][14]), .a_out(a_wire[17][15]), .partial_sum_out(psum_wire[18][14]));
    PE_Wp17 pe_17_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][15]), .partial_sum_in(psum_wire[17][15]), .a_out(a_wire[17][16]), .partial_sum_out(psum_wire[18][15]));
    PE_Wp22 pe_17_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][16]), .partial_sum_in(psum_wire[17][16]), .a_out(a_wire[17][17]), .partial_sum_out(psum_wire[18][16]));
    PE_Wp3 pe_17_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][17]), .partial_sum_in(psum_wire[17][17]), .a_out(a_wire[17][18]), .partial_sum_out(psum_wire[18][17]));
    PE_Wp33 pe_17_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][18]), .partial_sum_in(psum_wire[17][18]), .a_out(a_wire[17][19]), .partial_sum_out(psum_wire[18][18]));
    PE_Wn11 pe_17_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][19]), .partial_sum_in(psum_wire[17][19]), .a_out(a_wire[17][20]), .partial_sum_out(psum_wire[18][19]));
    PE_Wn43 pe_17_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][20]), .partial_sum_in(psum_wire[17][20]), .a_out(a_wire[17][21]), .partial_sum_out(psum_wire[18][20]));
    PE_Wn50 pe_17_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][21]), .partial_sum_in(psum_wire[17][21]), .a_out(a_wire[17][22]), .partial_sum_out(psum_wire[18][21]));
    PE_Wn19 pe_17_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][22]), .partial_sum_in(psum_wire[17][22]), .a_out(a_wire[17][23]), .partial_sum_out(psum_wire[18][22]));
    PE_Wn23 pe_17_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][23]), .partial_sum_in(psum_wire[17][23]), .a_out(a_wire[17][24]), .partial_sum_out(psum_wire[18][23]));
    PE_Wp25 pe_17_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][24]), .partial_sum_in(psum_wire[17][24]), .a_out(a_wire[17][25]), .partial_sum_out(psum_wire[18][24]));
    PE_Wp1 pe_17_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][25]), .partial_sum_in(psum_wire[17][25]), .a_out(a_wire[17][26]), .partial_sum_out(psum_wire[18][25]));
    PE_Wn7 pe_17_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][26]), .partial_sum_in(psum_wire[17][26]), .a_out(a_wire[17][27]), .partial_sum_out(psum_wire[18][26]));
    PE_Wp13 pe_17_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][27]), .partial_sum_in(psum_wire[17][27]), .a_out(a_wire[17][28]), .partial_sum_out(psum_wire[18][27]));
    PE_Wp1 pe_17_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][28]), .partial_sum_in(psum_wire[17][28]), .a_out(a_wire[17][29]), .partial_sum_out(psum_wire[18][28]));
    PE_Wn7 pe_17_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][29]), .partial_sum_in(psum_wire[17][29]), .a_out(a_wire[17][30]), .partial_sum_out(psum_wire[18][29]));
    PE_Wp12 pe_17_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][30]), .partial_sum_in(psum_wire[17][30]), .a_out(a_wire[17][31]), .partial_sum_out(psum_wire[18][30]));
    PE_Wp13 pe_17_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[17][31]), .partial_sum_in(psum_wire[17][31]), .a_out(a_wire[17][32]), .partial_sum_out(psum_wire[18][31]));
    PE_Wp0 pe_18_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][0]), .partial_sum_in(psum_wire[18][0]), .a_out(a_wire[18][1]), .partial_sum_out(psum_wire[19][0]));
    PE_Wn17 pe_18_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][1]), .partial_sum_in(psum_wire[18][1]), .a_out(a_wire[18][2]), .partial_sum_out(psum_wire[19][1]));
    PE_Wn24 pe_18_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][2]), .partial_sum_in(psum_wire[18][2]), .a_out(a_wire[18][3]), .partial_sum_out(psum_wire[19][2]));
    PE_Wn82 pe_18_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][3]), .partial_sum_in(psum_wire[18][3]), .a_out(a_wire[18][4]), .partial_sum_out(psum_wire[19][3]));
    PE_Wn4 pe_18_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][4]), .partial_sum_in(psum_wire[18][4]), .a_out(a_wire[18][5]), .partial_sum_out(psum_wire[19][4]));
    PE_Wn48 pe_18_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][5]), .partial_sum_in(psum_wire[18][5]), .a_out(a_wire[18][6]), .partial_sum_out(psum_wire[19][5]));
    PE_Wp32 pe_18_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][6]), .partial_sum_in(psum_wire[18][6]), .a_out(a_wire[18][7]), .partial_sum_out(psum_wire[19][6]));
    PE_Wp29 pe_18_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][7]), .partial_sum_in(psum_wire[18][7]), .a_out(a_wire[18][8]), .partial_sum_out(psum_wire[19][7]));
    PE_Wp11 pe_18_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][8]), .partial_sum_in(psum_wire[18][8]), .a_out(a_wire[18][9]), .partial_sum_out(psum_wire[19][8]));
    PE_Wp70 pe_18_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][9]), .partial_sum_in(psum_wire[18][9]), .a_out(a_wire[18][10]), .partial_sum_out(psum_wire[19][9]));
    PE_Wn40 pe_18_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][10]), .partial_sum_in(psum_wire[18][10]), .a_out(a_wire[18][11]), .partial_sum_out(psum_wire[19][10]));
    PE_Wp19 pe_18_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][11]), .partial_sum_in(psum_wire[18][11]), .a_out(a_wire[18][12]), .partial_sum_out(psum_wire[19][11]));
    PE_Wp17 pe_18_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][12]), .partial_sum_in(psum_wire[18][12]), .a_out(a_wire[18][13]), .partial_sum_out(psum_wire[19][12]));
    PE_Wn32 pe_18_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][13]), .partial_sum_in(psum_wire[18][13]), .a_out(a_wire[18][14]), .partial_sum_out(psum_wire[19][13]));
    PE_Wn3 pe_18_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][14]), .partial_sum_in(psum_wire[18][14]), .a_out(a_wire[18][15]), .partial_sum_out(psum_wire[19][14]));
    PE_Wp0 pe_18_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][15]), .partial_sum_in(psum_wire[18][15]), .a_out(a_wire[18][16]), .partial_sum_out(psum_wire[19][15]));
    PE_Wn16 pe_18_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][16]), .partial_sum_in(psum_wire[18][16]), .a_out(a_wire[18][17]), .partial_sum_out(psum_wire[19][16]));
    PE_Wp63 pe_18_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][17]), .partial_sum_in(psum_wire[18][17]), .a_out(a_wire[18][18]), .partial_sum_out(psum_wire[19][17]));
    PE_Wp15 pe_18_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][18]), .partial_sum_in(psum_wire[18][18]), .a_out(a_wire[18][19]), .partial_sum_out(psum_wire[19][18]));
    PE_Wp55 pe_18_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][19]), .partial_sum_in(psum_wire[18][19]), .a_out(a_wire[18][20]), .partial_sum_out(psum_wire[19][19]));
    PE_Wn11 pe_18_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][20]), .partial_sum_in(psum_wire[18][20]), .a_out(a_wire[18][21]), .partial_sum_out(psum_wire[19][20]));
    PE_Wp47 pe_18_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][21]), .partial_sum_in(psum_wire[18][21]), .a_out(a_wire[18][22]), .partial_sum_out(psum_wire[19][21]));
    PE_Wp26 pe_18_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][22]), .partial_sum_in(psum_wire[18][22]), .a_out(a_wire[18][23]), .partial_sum_out(psum_wire[19][22]));
    PE_Wn5 pe_18_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][23]), .partial_sum_in(psum_wire[18][23]), .a_out(a_wire[18][24]), .partial_sum_out(psum_wire[19][23]));
    PE_Wp73 pe_18_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][24]), .partial_sum_in(psum_wire[18][24]), .a_out(a_wire[18][25]), .partial_sum_out(psum_wire[19][24]));
    PE_Wn23 pe_18_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][25]), .partial_sum_in(psum_wire[18][25]), .a_out(a_wire[18][26]), .partial_sum_out(psum_wire[19][25]));
    PE_Wn30 pe_18_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][26]), .partial_sum_in(psum_wire[18][26]), .a_out(a_wire[18][27]), .partial_sum_out(psum_wire[19][26]));
    PE_Wp16 pe_18_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][27]), .partial_sum_in(psum_wire[18][27]), .a_out(a_wire[18][28]), .partial_sum_out(psum_wire[19][27]));
    PE_Wn16 pe_18_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][28]), .partial_sum_in(psum_wire[18][28]), .a_out(a_wire[18][29]), .partial_sum_out(psum_wire[19][28]));
    PE_Wn49 pe_18_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][29]), .partial_sum_in(psum_wire[18][29]), .a_out(a_wire[18][30]), .partial_sum_out(psum_wire[19][29]));
    PE_Wn15 pe_18_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][30]), .partial_sum_in(psum_wire[18][30]), .a_out(a_wire[18][31]), .partial_sum_out(psum_wire[19][30]));
    PE_Wn27 pe_18_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[18][31]), .partial_sum_in(psum_wire[18][31]), .a_out(a_wire[18][32]), .partial_sum_out(psum_wire[19][31]));
    PE_Wp22 pe_19_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][0]), .partial_sum_in(psum_wire[19][0]), .a_out(a_wire[19][1]), .partial_sum_out(psum_wire[20][0]));
    PE_Wp49 pe_19_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][1]), .partial_sum_in(psum_wire[19][1]), .a_out(a_wire[19][2]), .partial_sum_out(psum_wire[20][1]));
    PE_Wn64 pe_19_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][2]), .partial_sum_in(psum_wire[19][2]), .a_out(a_wire[19][3]), .partial_sum_out(psum_wire[20][2]));
    PE_Wp13 pe_19_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][3]), .partial_sum_in(psum_wire[19][3]), .a_out(a_wire[19][4]), .partial_sum_out(psum_wire[20][3]));
    PE_Wp6 pe_19_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][4]), .partial_sum_in(psum_wire[19][4]), .a_out(a_wire[19][5]), .partial_sum_out(psum_wire[20][4]));
    PE_Wp36 pe_19_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][5]), .partial_sum_in(psum_wire[19][5]), .a_out(a_wire[19][6]), .partial_sum_out(psum_wire[20][5]));
    PE_Wn3 pe_19_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][6]), .partial_sum_in(psum_wire[19][6]), .a_out(a_wire[19][7]), .partial_sum_out(psum_wire[20][6]));
    PE_Wp21 pe_19_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][7]), .partial_sum_in(psum_wire[19][7]), .a_out(a_wire[19][8]), .partial_sum_out(psum_wire[20][7]));
    PE_Wn56 pe_19_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][8]), .partial_sum_in(psum_wire[19][8]), .a_out(a_wire[19][9]), .partial_sum_out(psum_wire[20][8]));
    PE_Wn50 pe_19_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][9]), .partial_sum_in(psum_wire[19][9]), .a_out(a_wire[19][10]), .partial_sum_out(psum_wire[20][9]));
    PE_Wp6 pe_19_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][10]), .partial_sum_in(psum_wire[19][10]), .a_out(a_wire[19][11]), .partial_sum_out(psum_wire[20][10]));
    PE_Wp35 pe_19_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][11]), .partial_sum_in(psum_wire[19][11]), .a_out(a_wire[19][12]), .partial_sum_out(psum_wire[20][11]));
    PE_Wn31 pe_19_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][12]), .partial_sum_in(psum_wire[19][12]), .a_out(a_wire[19][13]), .partial_sum_out(psum_wire[20][12]));
    PE_Wp0 pe_19_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][13]), .partial_sum_in(psum_wire[19][13]), .a_out(a_wire[19][14]), .partial_sum_out(psum_wire[20][13]));
    PE_Wp51 pe_19_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][14]), .partial_sum_in(psum_wire[19][14]), .a_out(a_wire[19][15]), .partial_sum_out(psum_wire[20][14]));
    PE_Wp4 pe_19_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][15]), .partial_sum_in(psum_wire[19][15]), .a_out(a_wire[19][16]), .partial_sum_out(psum_wire[20][15]));
    PE_Wn50 pe_19_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][16]), .partial_sum_in(psum_wire[19][16]), .a_out(a_wire[19][17]), .partial_sum_out(psum_wire[20][16]));
    PE_Wn2 pe_19_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][17]), .partial_sum_in(psum_wire[19][17]), .a_out(a_wire[19][18]), .partial_sum_out(psum_wire[20][17]));
    PE_Wn4 pe_19_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][18]), .partial_sum_in(psum_wire[19][18]), .a_out(a_wire[19][19]), .partial_sum_out(psum_wire[20][18]));
    PE_Wn24 pe_19_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][19]), .partial_sum_in(psum_wire[19][19]), .a_out(a_wire[19][20]), .partial_sum_out(psum_wire[20][19]));
    PE_Wn75 pe_19_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][20]), .partial_sum_in(psum_wire[19][20]), .a_out(a_wire[19][21]), .partial_sum_out(psum_wire[20][20]));
    PE_Wp65 pe_19_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][21]), .partial_sum_in(psum_wire[19][21]), .a_out(a_wire[19][22]), .partial_sum_out(psum_wire[20][21]));
    PE_Wn17 pe_19_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][22]), .partial_sum_in(psum_wire[19][22]), .a_out(a_wire[19][23]), .partial_sum_out(psum_wire[20][22]));
    PE_Wp32 pe_19_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][23]), .partial_sum_in(psum_wire[19][23]), .a_out(a_wire[19][24]), .partial_sum_out(psum_wire[20][23]));
    PE_Wn22 pe_19_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][24]), .partial_sum_in(psum_wire[19][24]), .a_out(a_wire[19][25]), .partial_sum_out(psum_wire[20][24]));
    PE_Wp11 pe_19_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][25]), .partial_sum_in(psum_wire[19][25]), .a_out(a_wire[19][26]), .partial_sum_out(psum_wire[20][25]));
    PE_Wn31 pe_19_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][26]), .partial_sum_in(psum_wire[19][26]), .a_out(a_wire[19][27]), .partial_sum_out(psum_wire[20][26]));
    PE_Wn66 pe_19_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][27]), .partial_sum_in(psum_wire[19][27]), .a_out(a_wire[19][28]), .partial_sum_out(psum_wire[20][27]));
    PE_Wn30 pe_19_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][28]), .partial_sum_in(psum_wire[19][28]), .a_out(a_wire[19][29]), .partial_sum_out(psum_wire[20][28]));
    PE_Wn49 pe_19_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][29]), .partial_sum_in(psum_wire[19][29]), .a_out(a_wire[19][30]), .partial_sum_out(psum_wire[20][29]));
    PE_Wn3 pe_19_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][30]), .partial_sum_in(psum_wire[19][30]), .a_out(a_wire[19][31]), .partial_sum_out(psum_wire[20][30]));
    PE_Wp6 pe_19_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[19][31]), .partial_sum_in(psum_wire[19][31]), .a_out(a_wire[19][32]), .partial_sum_out(psum_wire[20][31]));
    PE_Wp35 pe_20_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][0]), .partial_sum_in(psum_wire[20][0]), .a_out(a_wire[20][1]), .partial_sum_out(psum_wire[21][0]));
    PE_Wn69 pe_20_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][1]), .partial_sum_in(psum_wire[20][1]), .a_out(a_wire[20][2]), .partial_sum_out(psum_wire[21][1]));
    PE_Wp50 pe_20_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][2]), .partial_sum_in(psum_wire[20][2]), .a_out(a_wire[20][3]), .partial_sum_out(psum_wire[21][2]));
    PE_Wn56 pe_20_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][3]), .partial_sum_in(psum_wire[20][3]), .a_out(a_wire[20][4]), .partial_sum_out(psum_wire[21][3]));
    PE_Wn73 pe_20_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][4]), .partial_sum_in(psum_wire[20][4]), .a_out(a_wire[20][5]), .partial_sum_out(psum_wire[21][4]));
    PE_Wn24 pe_20_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][5]), .partial_sum_in(psum_wire[20][5]), .a_out(a_wire[20][6]), .partial_sum_out(psum_wire[21][5]));
    PE_Wn15 pe_20_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][6]), .partial_sum_in(psum_wire[20][6]), .a_out(a_wire[20][7]), .partial_sum_out(psum_wire[21][6]));
    PE_Wn13 pe_20_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][7]), .partial_sum_in(psum_wire[20][7]), .a_out(a_wire[20][8]), .partial_sum_out(psum_wire[21][7]));
    PE_Wp28 pe_20_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][8]), .partial_sum_in(psum_wire[20][8]), .a_out(a_wire[20][9]), .partial_sum_out(psum_wire[21][8]));
    PE_Wn2 pe_20_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][9]), .partial_sum_in(psum_wire[20][9]), .a_out(a_wire[20][10]), .partial_sum_out(psum_wire[21][9]));
    PE_Wp9 pe_20_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][10]), .partial_sum_in(psum_wire[20][10]), .a_out(a_wire[20][11]), .partial_sum_out(psum_wire[21][10]));
    PE_Wp17 pe_20_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][11]), .partial_sum_in(psum_wire[20][11]), .a_out(a_wire[20][12]), .partial_sum_out(psum_wire[21][11]));
    PE_Wp21 pe_20_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][12]), .partial_sum_in(psum_wire[20][12]), .a_out(a_wire[20][13]), .partial_sum_out(psum_wire[21][12]));
    PE_Wp3 pe_20_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][13]), .partial_sum_in(psum_wire[20][13]), .a_out(a_wire[20][14]), .partial_sum_out(psum_wire[21][13]));
    PE_Wn1 pe_20_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][14]), .partial_sum_in(psum_wire[20][14]), .a_out(a_wire[20][15]), .partial_sum_out(psum_wire[21][14]));
    PE_Wp5 pe_20_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][15]), .partial_sum_in(psum_wire[20][15]), .a_out(a_wire[20][16]), .partial_sum_out(psum_wire[21][15]));
    PE_Wp37 pe_20_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][16]), .partial_sum_in(psum_wire[20][16]), .a_out(a_wire[20][17]), .partial_sum_out(psum_wire[21][16]));
    PE_Wn23 pe_20_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][17]), .partial_sum_in(psum_wire[20][17]), .a_out(a_wire[20][18]), .partial_sum_out(psum_wire[21][17]));
    PE_Wn30 pe_20_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][18]), .partial_sum_in(psum_wire[20][18]), .a_out(a_wire[20][19]), .partial_sum_out(psum_wire[21][18]));
    PE_Wn31 pe_20_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][19]), .partial_sum_in(psum_wire[20][19]), .a_out(a_wire[20][20]), .partial_sum_out(psum_wire[21][19]));
    PE_Wp115 pe_20_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][20]), .partial_sum_in(psum_wire[20][20]), .a_out(a_wire[20][21]), .partial_sum_out(psum_wire[21][20]));
    PE_Wn72 pe_20_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][21]), .partial_sum_in(psum_wire[20][21]), .a_out(a_wire[20][22]), .partial_sum_out(psum_wire[21][21]));
    PE_Wp1 pe_20_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][22]), .partial_sum_in(psum_wire[20][22]), .a_out(a_wire[20][23]), .partial_sum_out(psum_wire[21][22]));
    PE_Wp2 pe_20_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][23]), .partial_sum_in(psum_wire[20][23]), .a_out(a_wire[20][24]), .partial_sum_out(psum_wire[21][23]));
    PE_Wp13 pe_20_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][24]), .partial_sum_in(psum_wire[20][24]), .a_out(a_wire[20][25]), .partial_sum_out(psum_wire[21][24]));
    PE_Wp48 pe_20_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][25]), .partial_sum_in(psum_wire[20][25]), .a_out(a_wire[20][26]), .partial_sum_out(psum_wire[21][25]));
    PE_Wn33 pe_20_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][26]), .partial_sum_in(psum_wire[20][26]), .a_out(a_wire[20][27]), .partial_sum_out(psum_wire[21][26]));
    PE_Wn37 pe_20_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][27]), .partial_sum_in(psum_wire[20][27]), .a_out(a_wire[20][28]), .partial_sum_out(psum_wire[21][27]));
    PE_Wp17 pe_20_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][28]), .partial_sum_in(psum_wire[20][28]), .a_out(a_wire[20][29]), .partial_sum_out(psum_wire[21][28]));
    PE_Wp50 pe_20_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][29]), .partial_sum_in(psum_wire[20][29]), .a_out(a_wire[20][30]), .partial_sum_out(psum_wire[21][29]));
    PE_Wp46 pe_20_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][30]), .partial_sum_in(psum_wire[20][30]), .a_out(a_wire[20][31]), .partial_sum_out(psum_wire[21][30]));
    PE_Wn17 pe_20_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[20][31]), .partial_sum_in(psum_wire[20][31]), .a_out(a_wire[20][32]), .partial_sum_out(psum_wire[21][31]));
    PE_Wn38 pe_21_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][0]), .partial_sum_in(psum_wire[21][0]), .a_out(a_wire[21][1]), .partial_sum_out(psum_wire[22][0]));
    PE_Wn28 pe_21_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][1]), .partial_sum_in(psum_wire[21][1]), .a_out(a_wire[21][2]), .partial_sum_out(psum_wire[22][1]));
    PE_Wp27 pe_21_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][2]), .partial_sum_in(psum_wire[21][2]), .a_out(a_wire[21][3]), .partial_sum_out(psum_wire[22][2]));
    PE_Wn8 pe_21_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][3]), .partial_sum_in(psum_wire[21][3]), .a_out(a_wire[21][4]), .partial_sum_out(psum_wire[22][3]));
    PE_Wp12 pe_21_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][4]), .partial_sum_in(psum_wire[21][4]), .a_out(a_wire[21][5]), .partial_sum_out(psum_wire[22][4]));
    PE_Wp22 pe_21_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][5]), .partial_sum_in(psum_wire[21][5]), .a_out(a_wire[21][6]), .partial_sum_out(psum_wire[22][5]));
    PE_Wp25 pe_21_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][6]), .partial_sum_in(psum_wire[21][6]), .a_out(a_wire[21][7]), .partial_sum_out(psum_wire[22][6]));
    PE_Wn22 pe_21_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][7]), .partial_sum_in(psum_wire[21][7]), .a_out(a_wire[21][8]), .partial_sum_out(psum_wire[22][7]));
    PE_Wp35 pe_21_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][8]), .partial_sum_in(psum_wire[21][8]), .a_out(a_wire[21][9]), .partial_sum_out(psum_wire[22][8]));
    PE_Wn35 pe_21_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][9]), .partial_sum_in(psum_wire[21][9]), .a_out(a_wire[21][10]), .partial_sum_out(psum_wire[22][9]));
    PE_Wp18 pe_21_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][10]), .partial_sum_in(psum_wire[21][10]), .a_out(a_wire[21][11]), .partial_sum_out(psum_wire[22][10]));
    PE_Wn4 pe_21_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][11]), .partial_sum_in(psum_wire[21][11]), .a_out(a_wire[21][12]), .partial_sum_out(psum_wire[22][11]));
    PE_Wn36 pe_21_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][12]), .partial_sum_in(psum_wire[21][12]), .a_out(a_wire[21][13]), .partial_sum_out(psum_wire[22][12]));
    PE_Wn10 pe_21_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][13]), .partial_sum_in(psum_wire[21][13]), .a_out(a_wire[21][14]), .partial_sum_out(psum_wire[22][13]));
    PE_Wp60 pe_21_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][14]), .partial_sum_in(psum_wire[21][14]), .a_out(a_wire[21][15]), .partial_sum_out(psum_wire[22][14]));
    PE_Wn27 pe_21_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][15]), .partial_sum_in(psum_wire[21][15]), .a_out(a_wire[21][16]), .partial_sum_out(psum_wire[22][15]));
    PE_Wp45 pe_21_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][16]), .partial_sum_in(psum_wire[21][16]), .a_out(a_wire[21][17]), .partial_sum_out(psum_wire[22][16]));
    PE_Wp20 pe_21_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][17]), .partial_sum_in(psum_wire[21][17]), .a_out(a_wire[21][18]), .partial_sum_out(psum_wire[22][17]));
    PE_Wn59 pe_21_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][18]), .partial_sum_in(psum_wire[21][18]), .a_out(a_wire[21][19]), .partial_sum_out(psum_wire[22][18]));
    PE_Wn13 pe_21_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][19]), .partial_sum_in(psum_wire[21][19]), .a_out(a_wire[21][20]), .partial_sum_out(psum_wire[22][19]));
    PE_Wp63 pe_21_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][20]), .partial_sum_in(psum_wire[21][20]), .a_out(a_wire[21][21]), .partial_sum_out(psum_wire[22][20]));
    PE_Wp72 pe_21_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][21]), .partial_sum_in(psum_wire[21][21]), .a_out(a_wire[21][22]), .partial_sum_out(psum_wire[22][21]));
    PE_Wp3 pe_21_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][22]), .partial_sum_in(psum_wire[21][22]), .a_out(a_wire[21][23]), .partial_sum_out(psum_wire[22][22]));
    PE_Wn9 pe_21_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][23]), .partial_sum_in(psum_wire[21][23]), .a_out(a_wire[21][24]), .partial_sum_out(psum_wire[22][23]));
    PE_Wn6 pe_21_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][24]), .partial_sum_in(psum_wire[21][24]), .a_out(a_wire[21][25]), .partial_sum_out(psum_wire[22][24]));
    PE_Wp8 pe_21_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][25]), .partial_sum_in(psum_wire[21][25]), .a_out(a_wire[21][26]), .partial_sum_out(psum_wire[22][25]));
    PE_Wn19 pe_21_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][26]), .partial_sum_in(psum_wire[21][26]), .a_out(a_wire[21][27]), .partial_sum_out(psum_wire[22][26]));
    PE_Wp8 pe_21_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][27]), .partial_sum_in(psum_wire[21][27]), .a_out(a_wire[21][28]), .partial_sum_out(psum_wire[22][27]));
    PE_Wn7 pe_21_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][28]), .partial_sum_in(psum_wire[21][28]), .a_out(a_wire[21][29]), .partial_sum_out(psum_wire[22][28]));
    PE_Wn38 pe_21_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][29]), .partial_sum_in(psum_wire[21][29]), .a_out(a_wire[21][30]), .partial_sum_out(psum_wire[22][29]));
    PE_Wp96 pe_21_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][30]), .partial_sum_in(psum_wire[21][30]), .a_out(a_wire[21][31]), .partial_sum_out(psum_wire[22][30]));
    PE_Wp21 pe_21_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[21][31]), .partial_sum_in(psum_wire[21][31]), .a_out(a_wire[21][32]), .partial_sum_out(psum_wire[22][31]));
    PE_Wp15 pe_22_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][0]), .partial_sum_in(psum_wire[22][0]), .a_out(a_wire[22][1]), .partial_sum_out(psum_wire[23][0]));
    PE_Wn54 pe_22_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][1]), .partial_sum_in(psum_wire[22][1]), .a_out(a_wire[22][2]), .partial_sum_out(psum_wire[23][1]));
    PE_Wp2 pe_22_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][2]), .partial_sum_in(psum_wire[22][2]), .a_out(a_wire[22][3]), .partial_sum_out(psum_wire[23][2]));
    PE_Wn21 pe_22_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][3]), .partial_sum_in(psum_wire[22][3]), .a_out(a_wire[22][4]), .partial_sum_out(psum_wire[23][3]));
    PE_Wp24 pe_22_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][4]), .partial_sum_in(psum_wire[22][4]), .a_out(a_wire[22][5]), .partial_sum_out(psum_wire[23][4]));
    PE_Wp18 pe_22_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][5]), .partial_sum_in(psum_wire[22][5]), .a_out(a_wire[22][6]), .partial_sum_out(psum_wire[23][5]));
    PE_Wn28 pe_22_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][6]), .partial_sum_in(psum_wire[22][6]), .a_out(a_wire[22][7]), .partial_sum_out(psum_wire[23][6]));
    PE_Wn25 pe_22_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][7]), .partial_sum_in(psum_wire[22][7]), .a_out(a_wire[22][8]), .partial_sum_out(psum_wire[23][7]));
    PE_Wn6 pe_22_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][8]), .partial_sum_in(psum_wire[22][8]), .a_out(a_wire[22][9]), .partial_sum_out(psum_wire[23][8]));
    PE_Wn21 pe_22_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][9]), .partial_sum_in(psum_wire[22][9]), .a_out(a_wire[22][10]), .partial_sum_out(psum_wire[23][9]));
    PE_Wp9 pe_22_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][10]), .partial_sum_in(psum_wire[22][10]), .a_out(a_wire[22][11]), .partial_sum_out(psum_wire[23][10]));
    PE_Wn24 pe_22_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][11]), .partial_sum_in(psum_wire[22][11]), .a_out(a_wire[22][12]), .partial_sum_out(psum_wire[23][11]));
    PE_Wn5 pe_22_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][12]), .partial_sum_in(psum_wire[22][12]), .a_out(a_wire[22][13]), .partial_sum_out(psum_wire[23][12]));
    PE_Wp54 pe_22_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][13]), .partial_sum_in(psum_wire[22][13]), .a_out(a_wire[22][14]), .partial_sum_out(psum_wire[23][13]));
    PE_Wp7 pe_22_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][14]), .partial_sum_in(psum_wire[22][14]), .a_out(a_wire[22][15]), .partial_sum_out(psum_wire[23][14]));
    PE_Wp12 pe_22_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][15]), .partial_sum_in(psum_wire[22][15]), .a_out(a_wire[22][16]), .partial_sum_out(psum_wire[23][15]));
    PE_Wn12 pe_22_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][16]), .partial_sum_in(psum_wire[22][16]), .a_out(a_wire[22][17]), .partial_sum_out(psum_wire[23][16]));
    PE_Wp68 pe_22_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][17]), .partial_sum_in(psum_wire[22][17]), .a_out(a_wire[22][18]), .partial_sum_out(psum_wire[23][17]));
    PE_Wp36 pe_22_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][18]), .partial_sum_in(psum_wire[22][18]), .a_out(a_wire[22][19]), .partial_sum_out(psum_wire[23][18]));
    PE_Wn4 pe_22_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][19]), .partial_sum_in(psum_wire[22][19]), .a_out(a_wire[22][20]), .partial_sum_out(psum_wire[23][19]));
    PE_Wp14 pe_22_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][20]), .partial_sum_in(psum_wire[22][20]), .a_out(a_wire[22][21]), .partial_sum_out(psum_wire[23][20]));
    PE_Wp4 pe_22_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][21]), .partial_sum_in(psum_wire[22][21]), .a_out(a_wire[22][22]), .partial_sum_out(psum_wire[23][21]));
    PE_Wn20 pe_22_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][22]), .partial_sum_in(psum_wire[22][22]), .a_out(a_wire[22][23]), .partial_sum_out(psum_wire[23][22]));
    PE_Wn30 pe_22_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][23]), .partial_sum_in(psum_wire[22][23]), .a_out(a_wire[22][24]), .partial_sum_out(psum_wire[23][23]));
    PE_Wp24 pe_22_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][24]), .partial_sum_in(psum_wire[22][24]), .a_out(a_wire[22][25]), .partial_sum_out(psum_wire[23][24]));
    PE_Wp28 pe_22_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][25]), .partial_sum_in(psum_wire[22][25]), .a_out(a_wire[22][26]), .partial_sum_out(psum_wire[23][25]));
    PE_Wp20 pe_22_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][26]), .partial_sum_in(psum_wire[22][26]), .a_out(a_wire[22][27]), .partial_sum_out(psum_wire[23][26]));
    PE_Wp11 pe_22_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][27]), .partial_sum_in(psum_wire[22][27]), .a_out(a_wire[22][28]), .partial_sum_out(psum_wire[23][27]));
    PE_Wp9 pe_22_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][28]), .partial_sum_in(psum_wire[22][28]), .a_out(a_wire[22][29]), .partial_sum_out(psum_wire[23][28]));
    PE_Wn11 pe_22_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][29]), .partial_sum_in(psum_wire[22][29]), .a_out(a_wire[22][30]), .partial_sum_out(psum_wire[23][29]));
    PE_Wp4 pe_22_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][30]), .partial_sum_in(psum_wire[22][30]), .a_out(a_wire[22][31]), .partial_sum_out(psum_wire[23][30]));
    PE_Wp77 pe_22_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[22][31]), .partial_sum_in(psum_wire[22][31]), .a_out(a_wire[22][32]), .partial_sum_out(psum_wire[23][31]));
    PE_Wp37 pe_23_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][0]), .partial_sum_in(psum_wire[23][0]), .a_out(a_wire[23][1]), .partial_sum_out(psum_wire[24][0]));
    PE_Wn3 pe_23_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][1]), .partial_sum_in(psum_wire[23][1]), .a_out(a_wire[23][2]), .partial_sum_out(psum_wire[24][1]));
    PE_Wn61 pe_23_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][2]), .partial_sum_in(psum_wire[23][2]), .a_out(a_wire[23][3]), .partial_sum_out(psum_wire[24][2]));
    PE_Wn55 pe_23_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][3]), .partial_sum_in(psum_wire[23][3]), .a_out(a_wire[23][4]), .partial_sum_out(psum_wire[24][3]));
    PE_Wn23 pe_23_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][4]), .partial_sum_in(psum_wire[23][4]), .a_out(a_wire[23][5]), .partial_sum_out(psum_wire[24][4]));
    PE_Wn4 pe_23_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][5]), .partial_sum_in(psum_wire[23][5]), .a_out(a_wire[23][6]), .partial_sum_out(psum_wire[24][5]));
    PE_Wp70 pe_23_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][6]), .partial_sum_in(psum_wire[23][6]), .a_out(a_wire[23][7]), .partial_sum_out(psum_wire[24][6]));
    PE_Wn25 pe_23_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][7]), .partial_sum_in(psum_wire[23][7]), .a_out(a_wire[23][8]), .partial_sum_out(psum_wire[24][7]));
    PE_Wp15 pe_23_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][8]), .partial_sum_in(psum_wire[23][8]), .a_out(a_wire[23][9]), .partial_sum_out(psum_wire[24][8]));
    PE_Wn82 pe_23_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][9]), .partial_sum_in(psum_wire[23][9]), .a_out(a_wire[23][10]), .partial_sum_out(psum_wire[24][9]));
    PE_Wp50 pe_23_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][10]), .partial_sum_in(psum_wire[23][10]), .a_out(a_wire[23][11]), .partial_sum_out(psum_wire[24][10]));
    PE_Wn31 pe_23_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][11]), .partial_sum_in(psum_wire[23][11]), .a_out(a_wire[23][12]), .partial_sum_out(psum_wire[24][11]));
    PE_Wp24 pe_23_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][12]), .partial_sum_in(psum_wire[23][12]), .a_out(a_wire[23][13]), .partial_sum_out(psum_wire[24][12]));
    PE_Wp40 pe_23_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][13]), .partial_sum_in(psum_wire[23][13]), .a_out(a_wire[23][14]), .partial_sum_out(psum_wire[24][13]));
    PE_Wn33 pe_23_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][14]), .partial_sum_in(psum_wire[23][14]), .a_out(a_wire[23][15]), .partial_sum_out(psum_wire[24][14]));
    PE_Wp16 pe_23_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][15]), .partial_sum_in(psum_wire[23][15]), .a_out(a_wire[23][16]), .partial_sum_out(psum_wire[24][15]));
    PE_Wp56 pe_23_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][16]), .partial_sum_in(psum_wire[23][16]), .a_out(a_wire[23][17]), .partial_sum_out(psum_wire[24][16]));
    PE_Wp40 pe_23_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][17]), .partial_sum_in(psum_wire[23][17]), .a_out(a_wire[23][18]), .partial_sum_out(psum_wire[24][17]));
    PE_Wn5 pe_23_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][18]), .partial_sum_in(psum_wire[23][18]), .a_out(a_wire[23][19]), .partial_sum_out(psum_wire[24][18]));
    PE_Wn12 pe_23_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][19]), .partial_sum_in(psum_wire[23][19]), .a_out(a_wire[23][20]), .partial_sum_out(psum_wire[24][19]));
    PE_Wn13 pe_23_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][20]), .partial_sum_in(psum_wire[23][20]), .a_out(a_wire[23][21]), .partial_sum_out(psum_wire[24][20]));
    PE_Wp18 pe_23_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][21]), .partial_sum_in(psum_wire[23][21]), .a_out(a_wire[23][22]), .partial_sum_out(psum_wire[24][21]));
    PE_Wn71 pe_23_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][22]), .partial_sum_in(psum_wire[23][22]), .a_out(a_wire[23][23]), .partial_sum_out(psum_wire[24][22]));
    PE_Wp23 pe_23_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][23]), .partial_sum_in(psum_wire[23][23]), .a_out(a_wire[23][24]), .partial_sum_out(psum_wire[24][23]));
    PE_Wn28 pe_23_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][24]), .partial_sum_in(psum_wire[23][24]), .a_out(a_wire[23][25]), .partial_sum_out(psum_wire[24][24]));
    PE_Wn8 pe_23_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][25]), .partial_sum_in(psum_wire[23][25]), .a_out(a_wire[23][26]), .partial_sum_out(psum_wire[24][25]));
    PE_Wn12 pe_23_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][26]), .partial_sum_in(psum_wire[23][26]), .a_out(a_wire[23][27]), .partial_sum_out(psum_wire[24][26]));
    PE_Wn8 pe_23_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][27]), .partial_sum_in(psum_wire[23][27]), .a_out(a_wire[23][28]), .partial_sum_out(psum_wire[24][27]));
    PE_Wp14 pe_23_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][28]), .partial_sum_in(psum_wire[23][28]), .a_out(a_wire[23][29]), .partial_sum_out(psum_wire[24][28]));
    PE_Wp50 pe_23_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][29]), .partial_sum_in(psum_wire[23][29]), .a_out(a_wire[23][30]), .partial_sum_out(psum_wire[24][29]));
    PE_Wn89 pe_23_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][30]), .partial_sum_in(psum_wire[23][30]), .a_out(a_wire[23][31]), .partial_sum_out(psum_wire[24][30]));
    PE_Wp1 pe_23_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[23][31]), .partial_sum_in(psum_wire[23][31]), .a_out(a_wire[23][32]), .partial_sum_out(psum_wire[24][31]));
    PE_Wp0 pe_24_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][0]), .partial_sum_in(psum_wire[24][0]), .a_out(a_wire[24][1]), .partial_sum_out(psum_wire[25][0]));
    PE_Wp57 pe_24_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][1]), .partial_sum_in(psum_wire[24][1]), .a_out(a_wire[24][2]), .partial_sum_out(psum_wire[25][1]));
    PE_Wn2 pe_24_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][2]), .partial_sum_in(psum_wire[24][2]), .a_out(a_wire[24][3]), .partial_sum_out(psum_wire[25][2]));
    PE_Wp49 pe_24_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][3]), .partial_sum_in(psum_wire[24][3]), .a_out(a_wire[24][4]), .partial_sum_out(psum_wire[25][3]));
    PE_Wp53 pe_24_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][4]), .partial_sum_in(psum_wire[24][4]), .a_out(a_wire[24][5]), .partial_sum_out(psum_wire[25][4]));
    PE_Wp18 pe_24_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][5]), .partial_sum_in(psum_wire[24][5]), .a_out(a_wire[24][6]), .partial_sum_out(psum_wire[25][5]));
    PE_Wn20 pe_24_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][6]), .partial_sum_in(psum_wire[24][6]), .a_out(a_wire[24][7]), .partial_sum_out(psum_wire[25][6]));
    PE_Wp62 pe_24_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][7]), .partial_sum_in(psum_wire[24][7]), .a_out(a_wire[24][8]), .partial_sum_out(psum_wire[25][7]));
    PE_Wp11 pe_24_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][8]), .partial_sum_in(psum_wire[24][8]), .a_out(a_wire[24][9]), .partial_sum_out(psum_wire[25][8]));
    PE_Wn6 pe_24_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][9]), .partial_sum_in(psum_wire[24][9]), .a_out(a_wire[24][10]), .partial_sum_out(psum_wire[25][9]));
    PE_Wn29 pe_24_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][10]), .partial_sum_in(psum_wire[24][10]), .a_out(a_wire[24][11]), .partial_sum_out(psum_wire[25][10]));
    PE_Wn48 pe_24_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][11]), .partial_sum_in(psum_wire[24][11]), .a_out(a_wire[24][12]), .partial_sum_out(psum_wire[25][11]));
    PE_Wn14 pe_24_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][12]), .partial_sum_in(psum_wire[24][12]), .a_out(a_wire[24][13]), .partial_sum_out(psum_wire[25][12]));
    PE_Wn46 pe_24_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][13]), .partial_sum_in(psum_wire[24][13]), .a_out(a_wire[24][14]), .partial_sum_out(psum_wire[25][13]));
    PE_Wp66 pe_24_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][14]), .partial_sum_in(psum_wire[24][14]), .a_out(a_wire[24][15]), .partial_sum_out(psum_wire[25][14]));
    PE_Wp22 pe_24_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][15]), .partial_sum_in(psum_wire[24][15]), .a_out(a_wire[24][16]), .partial_sum_out(psum_wire[25][15]));
    PE_Wn78 pe_24_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][16]), .partial_sum_in(psum_wire[24][16]), .a_out(a_wire[24][17]), .partial_sum_out(psum_wire[25][16]));
    PE_Wn86 pe_24_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][17]), .partial_sum_in(psum_wire[24][17]), .a_out(a_wire[24][18]), .partial_sum_out(psum_wire[25][17]));
    PE_Wp48 pe_24_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][18]), .partial_sum_in(psum_wire[24][18]), .a_out(a_wire[24][19]), .partial_sum_out(psum_wire[25][18]));
    PE_Wp21 pe_24_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][19]), .partial_sum_in(psum_wire[24][19]), .a_out(a_wire[24][20]), .partial_sum_out(psum_wire[25][19]));
    PE_Wn26 pe_24_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][20]), .partial_sum_in(psum_wire[24][20]), .a_out(a_wire[24][21]), .partial_sum_out(psum_wire[25][20]));
    PE_Wn23 pe_24_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][21]), .partial_sum_in(psum_wire[24][21]), .a_out(a_wire[24][22]), .partial_sum_out(psum_wire[25][21]));
    PE_Wn74 pe_24_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][22]), .partial_sum_in(psum_wire[24][22]), .a_out(a_wire[24][23]), .partial_sum_out(psum_wire[25][22]));
    PE_Wp18 pe_24_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][23]), .partial_sum_in(psum_wire[24][23]), .a_out(a_wire[24][24]), .partial_sum_out(psum_wire[25][23]));
    PE_Wp6 pe_24_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][24]), .partial_sum_in(psum_wire[24][24]), .a_out(a_wire[24][25]), .partial_sum_out(psum_wire[25][24]));
    PE_Wp23 pe_24_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][25]), .partial_sum_in(psum_wire[24][25]), .a_out(a_wire[24][26]), .partial_sum_out(psum_wire[25][25]));
    PE_Wn39 pe_24_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][26]), .partial_sum_in(psum_wire[24][26]), .a_out(a_wire[24][27]), .partial_sum_out(psum_wire[25][26]));
    PE_Wn5 pe_24_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][27]), .partial_sum_in(psum_wire[24][27]), .a_out(a_wire[24][28]), .partial_sum_out(psum_wire[25][27]));
    PE_Wn2 pe_24_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][28]), .partial_sum_in(psum_wire[24][28]), .a_out(a_wire[24][29]), .partial_sum_out(psum_wire[25][28]));
    PE_Wn36 pe_24_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][29]), .partial_sum_in(psum_wire[24][29]), .a_out(a_wire[24][30]), .partial_sum_out(psum_wire[25][29]));
    PE_Wp11 pe_24_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][30]), .partial_sum_in(psum_wire[24][30]), .a_out(a_wire[24][31]), .partial_sum_out(psum_wire[25][30]));
    PE_Wp9 pe_24_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[24][31]), .partial_sum_in(psum_wire[24][31]), .a_out(a_wire[24][32]), .partial_sum_out(psum_wire[25][31]));
    PE_Wn7 pe_25_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][0]), .partial_sum_in(psum_wire[25][0]), .a_out(a_wire[25][1]), .partial_sum_out(psum_wire[26][0]));
    PE_Wn15 pe_25_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][1]), .partial_sum_in(psum_wire[25][1]), .a_out(a_wire[25][2]), .partial_sum_out(psum_wire[26][1]));
    PE_Wp16 pe_25_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][2]), .partial_sum_in(psum_wire[25][2]), .a_out(a_wire[25][3]), .partial_sum_out(psum_wire[26][2]));
    PE_Wn48 pe_25_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][3]), .partial_sum_in(psum_wire[25][3]), .a_out(a_wire[25][4]), .partial_sum_out(psum_wire[26][3]));
    PE_Wp7 pe_25_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][4]), .partial_sum_in(psum_wire[25][4]), .a_out(a_wire[25][5]), .partial_sum_out(psum_wire[26][4]));
    PE_Wp21 pe_25_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][5]), .partial_sum_in(psum_wire[25][5]), .a_out(a_wire[25][6]), .partial_sum_out(psum_wire[26][5]));
    PE_Wn2 pe_25_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][6]), .partial_sum_in(psum_wire[25][6]), .a_out(a_wire[25][7]), .partial_sum_out(psum_wire[26][6]));
    PE_Wn6 pe_25_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][7]), .partial_sum_in(psum_wire[25][7]), .a_out(a_wire[25][8]), .partial_sum_out(psum_wire[26][7]));
    PE_Wp45 pe_25_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][8]), .partial_sum_in(psum_wire[25][8]), .a_out(a_wire[25][9]), .partial_sum_out(psum_wire[26][8]));
    PE_Wn9 pe_25_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][9]), .partial_sum_in(psum_wire[25][9]), .a_out(a_wire[25][10]), .partial_sum_out(psum_wire[26][9]));
    PE_Wn7 pe_25_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][10]), .partial_sum_in(psum_wire[25][10]), .a_out(a_wire[25][11]), .partial_sum_out(psum_wire[26][10]));
    PE_Wn12 pe_25_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][11]), .partial_sum_in(psum_wire[25][11]), .a_out(a_wire[25][12]), .partial_sum_out(psum_wire[26][11]));
    PE_Wn52 pe_25_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][12]), .partial_sum_in(psum_wire[25][12]), .a_out(a_wire[25][13]), .partial_sum_out(psum_wire[26][12]));
    PE_Wn26 pe_25_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][13]), .partial_sum_in(psum_wire[25][13]), .a_out(a_wire[25][14]), .partial_sum_out(psum_wire[26][13]));
    PE_Wn3 pe_25_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][14]), .partial_sum_in(psum_wire[25][14]), .a_out(a_wire[25][15]), .partial_sum_out(psum_wire[26][14]));
    PE_Wn15 pe_25_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][15]), .partial_sum_in(psum_wire[25][15]), .a_out(a_wire[25][16]), .partial_sum_out(psum_wire[26][15]));
    PE_Wp22 pe_25_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][16]), .partial_sum_in(psum_wire[25][16]), .a_out(a_wire[25][17]), .partial_sum_out(psum_wire[26][16]));
    PE_Wp13 pe_25_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][17]), .partial_sum_in(psum_wire[25][17]), .a_out(a_wire[25][18]), .partial_sum_out(psum_wire[26][17]));
    PE_Wp44 pe_25_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][18]), .partial_sum_in(psum_wire[25][18]), .a_out(a_wire[25][19]), .partial_sum_out(psum_wire[26][18]));
    PE_Wp9 pe_25_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][19]), .partial_sum_in(psum_wire[25][19]), .a_out(a_wire[25][20]), .partial_sum_out(psum_wire[26][19]));
    PE_Wp74 pe_25_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][20]), .partial_sum_in(psum_wire[25][20]), .a_out(a_wire[25][21]), .partial_sum_out(psum_wire[26][20]));
    PE_Wn22 pe_25_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][21]), .partial_sum_in(psum_wire[25][21]), .a_out(a_wire[25][22]), .partial_sum_out(psum_wire[26][21]));
    PE_Wp14 pe_25_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][22]), .partial_sum_in(psum_wire[25][22]), .a_out(a_wire[25][23]), .partial_sum_out(psum_wire[26][22]));
    PE_Wn14 pe_25_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][23]), .partial_sum_in(psum_wire[25][23]), .a_out(a_wire[25][24]), .partial_sum_out(psum_wire[26][23]));
    PE_Wp1 pe_25_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][24]), .partial_sum_in(psum_wire[25][24]), .a_out(a_wire[25][25]), .partial_sum_out(psum_wire[26][24]));
    PE_Wp38 pe_25_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][25]), .partial_sum_in(psum_wire[25][25]), .a_out(a_wire[25][26]), .partial_sum_out(psum_wire[26][25]));
    PE_Wp26 pe_25_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][26]), .partial_sum_in(psum_wire[25][26]), .a_out(a_wire[25][27]), .partial_sum_out(psum_wire[26][26]));
    PE_Wn17 pe_25_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][27]), .partial_sum_in(psum_wire[25][27]), .a_out(a_wire[25][28]), .partial_sum_out(psum_wire[26][27]));
    PE_Wp16 pe_25_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][28]), .partial_sum_in(psum_wire[25][28]), .a_out(a_wire[25][29]), .partial_sum_out(psum_wire[26][28]));
    PE_Wp60 pe_25_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][29]), .partial_sum_in(psum_wire[25][29]), .a_out(a_wire[25][30]), .partial_sum_out(psum_wire[26][29]));
    PE_Wn7 pe_25_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][30]), .partial_sum_in(psum_wire[25][30]), .a_out(a_wire[25][31]), .partial_sum_out(psum_wire[26][30]));
    PE_Wp63 pe_25_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[25][31]), .partial_sum_in(psum_wire[25][31]), .a_out(a_wire[25][32]), .partial_sum_out(psum_wire[26][31]));
    PE_Wp29 pe_26_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][0]), .partial_sum_in(psum_wire[26][0]), .a_out(a_wire[26][1]), .partial_sum_out(psum_wire[27][0]));
    PE_Wn110 pe_26_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][1]), .partial_sum_in(psum_wire[26][1]), .a_out(a_wire[26][2]), .partial_sum_out(psum_wire[27][1]));
    PE_Wp99 pe_26_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][2]), .partial_sum_in(psum_wire[26][2]), .a_out(a_wire[26][3]), .partial_sum_out(psum_wire[27][2]));
    PE_Wp40 pe_26_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][3]), .partial_sum_in(psum_wire[26][3]), .a_out(a_wire[26][4]), .partial_sum_out(psum_wire[27][3]));
    PE_Wn13 pe_26_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][4]), .partial_sum_in(psum_wire[26][4]), .a_out(a_wire[26][5]), .partial_sum_out(psum_wire[27][4]));
    PE_Wn38 pe_26_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][5]), .partial_sum_in(psum_wire[26][5]), .a_out(a_wire[26][6]), .partial_sum_out(psum_wire[27][5]));
    PE_Wp65 pe_26_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][6]), .partial_sum_in(psum_wire[26][6]), .a_out(a_wire[26][7]), .partial_sum_out(psum_wire[27][6]));
    PE_Wn71 pe_26_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][7]), .partial_sum_in(psum_wire[26][7]), .a_out(a_wire[26][8]), .partial_sum_out(psum_wire[27][7]));
    PE_Wp5 pe_26_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][8]), .partial_sum_in(psum_wire[26][8]), .a_out(a_wire[26][9]), .partial_sum_out(psum_wire[27][8]));
    PE_Wn38 pe_26_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][9]), .partial_sum_in(psum_wire[26][9]), .a_out(a_wire[26][10]), .partial_sum_out(psum_wire[27][9]));
    PE_Wn56 pe_26_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][10]), .partial_sum_in(psum_wire[26][10]), .a_out(a_wire[26][11]), .partial_sum_out(psum_wire[27][10]));
    PE_Wp14 pe_26_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][11]), .partial_sum_in(psum_wire[26][11]), .a_out(a_wire[26][12]), .partial_sum_out(psum_wire[27][11]));
    PE_Wn52 pe_26_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][12]), .partial_sum_in(psum_wire[26][12]), .a_out(a_wire[26][13]), .partial_sum_out(psum_wire[27][12]));
    PE_Wn61 pe_26_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][13]), .partial_sum_in(psum_wire[26][13]), .a_out(a_wire[26][14]), .partial_sum_out(psum_wire[27][13]));
    PE_Wp49 pe_26_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][14]), .partial_sum_in(psum_wire[26][14]), .a_out(a_wire[26][15]), .partial_sum_out(psum_wire[27][14]));
    PE_Wn17 pe_26_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][15]), .partial_sum_in(psum_wire[26][15]), .a_out(a_wire[26][16]), .partial_sum_out(psum_wire[27][15]));
    PE_Wp30 pe_26_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][16]), .partial_sum_in(psum_wire[26][16]), .a_out(a_wire[26][17]), .partial_sum_out(psum_wire[27][16]));
    PE_Wn49 pe_26_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][17]), .partial_sum_in(psum_wire[26][17]), .a_out(a_wire[26][18]), .partial_sum_out(psum_wire[27][17]));
    PE_Wn58 pe_26_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][18]), .partial_sum_in(psum_wire[26][18]), .a_out(a_wire[26][19]), .partial_sum_out(psum_wire[27][18]));
    PE_Wp7 pe_26_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][19]), .partial_sum_in(psum_wire[26][19]), .a_out(a_wire[26][20]), .partial_sum_out(psum_wire[27][19]));
    PE_Wn59 pe_26_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][20]), .partial_sum_in(psum_wire[26][20]), .a_out(a_wire[26][21]), .partial_sum_out(psum_wire[27][20]));
    PE_Wn13 pe_26_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][21]), .partial_sum_in(psum_wire[26][21]), .a_out(a_wire[26][22]), .partial_sum_out(psum_wire[27][21]));
    PE_Wn31 pe_26_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][22]), .partial_sum_in(psum_wire[26][22]), .a_out(a_wire[26][23]), .partial_sum_out(psum_wire[27][22]));
    PE_Wn8 pe_26_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][23]), .partial_sum_in(psum_wire[26][23]), .a_out(a_wire[26][24]), .partial_sum_out(psum_wire[27][23]));
    PE_Wn71 pe_26_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][24]), .partial_sum_in(psum_wire[26][24]), .a_out(a_wire[26][25]), .partial_sum_out(psum_wire[27][24]));
    PE_Wn5 pe_26_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][25]), .partial_sum_in(psum_wire[26][25]), .a_out(a_wire[26][26]), .partial_sum_out(psum_wire[27][25]));
    PE_Wn29 pe_26_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][26]), .partial_sum_in(psum_wire[26][26]), .a_out(a_wire[26][27]), .partial_sum_out(psum_wire[27][26]));
    PE_Wp20 pe_26_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][27]), .partial_sum_in(psum_wire[26][27]), .a_out(a_wire[26][28]), .partial_sum_out(psum_wire[27][27]));
    PE_Wp53 pe_26_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][28]), .partial_sum_in(psum_wire[26][28]), .a_out(a_wire[26][29]), .partial_sum_out(psum_wire[27][28]));
    PE_Wp20 pe_26_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][29]), .partial_sum_in(psum_wire[26][29]), .a_out(a_wire[26][30]), .partial_sum_out(psum_wire[27][29]));
    PE_Wp57 pe_26_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][30]), .partial_sum_in(psum_wire[26][30]), .a_out(a_wire[26][31]), .partial_sum_out(psum_wire[27][30]));
    PE_Wn104 pe_26_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[26][31]), .partial_sum_in(psum_wire[26][31]), .a_out(a_wire[26][32]), .partial_sum_out(psum_wire[27][31]));
    PE_Wp8 pe_27_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][0]), .partial_sum_in(psum_wire[27][0]), .a_out(a_wire[27][1]), .partial_sum_out(psum_wire[28][0]));
    PE_Wn2 pe_27_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][1]), .partial_sum_in(psum_wire[27][1]), .a_out(a_wire[27][2]), .partial_sum_out(psum_wire[28][1]));
    PE_Wn26 pe_27_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][2]), .partial_sum_in(psum_wire[27][2]), .a_out(a_wire[27][3]), .partial_sum_out(psum_wire[28][2]));
    PE_Wp27 pe_27_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][3]), .partial_sum_in(psum_wire[27][3]), .a_out(a_wire[27][4]), .partial_sum_out(psum_wire[28][3]));
    PE_Wn28 pe_27_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][4]), .partial_sum_in(psum_wire[27][4]), .a_out(a_wire[27][5]), .partial_sum_out(psum_wire[28][4]));
    PE_Wp67 pe_27_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][5]), .partial_sum_in(psum_wire[27][5]), .a_out(a_wire[27][6]), .partial_sum_out(psum_wire[28][5]));
    PE_Wn16 pe_27_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][6]), .partial_sum_in(psum_wire[27][6]), .a_out(a_wire[27][7]), .partial_sum_out(psum_wire[28][6]));
    PE_Wn33 pe_27_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][7]), .partial_sum_in(psum_wire[27][7]), .a_out(a_wire[27][8]), .partial_sum_out(psum_wire[28][7]));
    PE_Wp42 pe_27_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][8]), .partial_sum_in(psum_wire[27][8]), .a_out(a_wire[27][9]), .partial_sum_out(psum_wire[28][8]));
    PE_Wp11 pe_27_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][9]), .partial_sum_in(psum_wire[27][9]), .a_out(a_wire[27][10]), .partial_sum_out(psum_wire[28][9]));
    PE_Wn31 pe_27_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][10]), .partial_sum_in(psum_wire[27][10]), .a_out(a_wire[27][11]), .partial_sum_out(psum_wire[28][10]));
    PE_Wp33 pe_27_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][11]), .partial_sum_in(psum_wire[27][11]), .a_out(a_wire[27][12]), .partial_sum_out(psum_wire[28][11]));
    PE_Wn22 pe_27_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][12]), .partial_sum_in(psum_wire[27][12]), .a_out(a_wire[27][13]), .partial_sum_out(psum_wire[28][12]));
    PE_Wp7 pe_27_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][13]), .partial_sum_in(psum_wire[27][13]), .a_out(a_wire[27][14]), .partial_sum_out(psum_wire[28][13]));
    PE_Wn47 pe_27_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][14]), .partial_sum_in(psum_wire[27][14]), .a_out(a_wire[27][15]), .partial_sum_out(psum_wire[28][14]));
    PE_Wn30 pe_27_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][15]), .partial_sum_in(psum_wire[27][15]), .a_out(a_wire[27][16]), .partial_sum_out(psum_wire[28][15]));
    PE_Wp1 pe_27_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][16]), .partial_sum_in(psum_wire[27][16]), .a_out(a_wire[27][17]), .partial_sum_out(psum_wire[28][16]));
    PE_Wp58 pe_27_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][17]), .partial_sum_in(psum_wire[27][17]), .a_out(a_wire[27][18]), .partial_sum_out(psum_wire[28][17]));
    PE_Wn88 pe_27_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][18]), .partial_sum_in(psum_wire[27][18]), .a_out(a_wire[27][19]), .partial_sum_out(psum_wire[28][18]));
    PE_Wp9 pe_27_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][19]), .partial_sum_in(psum_wire[27][19]), .a_out(a_wire[27][20]), .partial_sum_out(psum_wire[28][19]));
    PE_Wn28 pe_27_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][20]), .partial_sum_in(psum_wire[27][20]), .a_out(a_wire[27][21]), .partial_sum_out(psum_wire[28][20]));
    PE_Wp28 pe_27_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][21]), .partial_sum_in(psum_wire[27][21]), .a_out(a_wire[27][22]), .partial_sum_out(psum_wire[28][21]));
    PE_Wp29 pe_27_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][22]), .partial_sum_in(psum_wire[27][22]), .a_out(a_wire[27][23]), .partial_sum_out(psum_wire[28][22]));
    PE_Wp25 pe_27_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][23]), .partial_sum_in(psum_wire[27][23]), .a_out(a_wire[27][24]), .partial_sum_out(psum_wire[28][23]));
    PE_Wn7 pe_27_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][24]), .partial_sum_in(psum_wire[27][24]), .a_out(a_wire[27][25]), .partial_sum_out(psum_wire[28][24]));
    PE_Wp33 pe_27_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][25]), .partial_sum_in(psum_wire[27][25]), .a_out(a_wire[27][26]), .partial_sum_out(psum_wire[28][25]));
    PE_Wp57 pe_27_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][26]), .partial_sum_in(psum_wire[27][26]), .a_out(a_wire[27][27]), .partial_sum_out(psum_wire[28][26]));
    PE_Wp68 pe_27_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][27]), .partial_sum_in(psum_wire[27][27]), .a_out(a_wire[27][28]), .partial_sum_out(psum_wire[28][27]));
    PE_Wp46 pe_27_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][28]), .partial_sum_in(psum_wire[27][28]), .a_out(a_wire[27][29]), .partial_sum_out(psum_wire[28][28]));
    PE_Wn1 pe_27_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][29]), .partial_sum_in(psum_wire[27][29]), .a_out(a_wire[27][30]), .partial_sum_out(psum_wire[28][29]));
    PE_Wp4 pe_27_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][30]), .partial_sum_in(psum_wire[27][30]), .a_out(a_wire[27][31]), .partial_sum_out(psum_wire[28][30]));
    PE_Wp29 pe_27_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[27][31]), .partial_sum_in(psum_wire[27][31]), .a_out(a_wire[27][32]), .partial_sum_out(psum_wire[28][31]));
    PE_Wn13 pe_28_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][0]), .partial_sum_in(psum_wire[28][0]), .a_out(a_wire[28][1]), .partial_sum_out(psum_wire[29][0]));
    PE_Wp10 pe_28_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][1]), .partial_sum_in(psum_wire[28][1]), .a_out(a_wire[28][2]), .partial_sum_out(psum_wire[29][1]));
    PE_Wp8 pe_28_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][2]), .partial_sum_in(psum_wire[28][2]), .a_out(a_wire[28][3]), .partial_sum_out(psum_wire[29][2]));
    PE_Wn15 pe_28_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][3]), .partial_sum_in(psum_wire[28][3]), .a_out(a_wire[28][4]), .partial_sum_out(psum_wire[29][3]));
    PE_Wn25 pe_28_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][4]), .partial_sum_in(psum_wire[28][4]), .a_out(a_wire[28][5]), .partial_sum_out(psum_wire[29][4]));
    PE_Wn10 pe_28_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][5]), .partial_sum_in(psum_wire[28][5]), .a_out(a_wire[28][6]), .partial_sum_out(psum_wire[29][5]));
    PE_Wn29 pe_28_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][6]), .partial_sum_in(psum_wire[28][6]), .a_out(a_wire[28][7]), .partial_sum_out(psum_wire[29][6]));
    PE_Wn24 pe_28_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][7]), .partial_sum_in(psum_wire[28][7]), .a_out(a_wire[28][8]), .partial_sum_out(psum_wire[29][7]));
    PE_Wn1 pe_28_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][8]), .partial_sum_in(psum_wire[28][8]), .a_out(a_wire[28][9]), .partial_sum_out(psum_wire[29][8]));
    PE_Wp3 pe_28_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][9]), .partial_sum_in(psum_wire[28][9]), .a_out(a_wire[28][10]), .partial_sum_out(psum_wire[29][9]));
    PE_Wp53 pe_28_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][10]), .partial_sum_in(psum_wire[28][10]), .a_out(a_wire[28][11]), .partial_sum_out(psum_wire[29][10]));
    PE_Wn41 pe_28_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][11]), .partial_sum_in(psum_wire[28][11]), .a_out(a_wire[28][12]), .partial_sum_out(psum_wire[29][11]));
    PE_Wp18 pe_28_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][12]), .partial_sum_in(psum_wire[28][12]), .a_out(a_wire[28][13]), .partial_sum_out(psum_wire[29][12]));
    PE_Wn46 pe_28_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][13]), .partial_sum_in(psum_wire[28][13]), .a_out(a_wire[28][14]), .partial_sum_out(psum_wire[29][13]));
    PE_Wp83 pe_28_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][14]), .partial_sum_in(psum_wire[28][14]), .a_out(a_wire[28][15]), .partial_sum_out(psum_wire[29][14]));
    PE_Wn53 pe_28_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][15]), .partial_sum_in(psum_wire[28][15]), .a_out(a_wire[28][16]), .partial_sum_out(psum_wire[29][15]));
    PE_Wn41 pe_28_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][16]), .partial_sum_in(psum_wire[28][16]), .a_out(a_wire[28][17]), .partial_sum_out(psum_wire[29][16]));
    PE_Wp13 pe_28_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][17]), .partial_sum_in(psum_wire[28][17]), .a_out(a_wire[28][18]), .partial_sum_out(psum_wire[29][17]));
    PE_Wn2 pe_28_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][18]), .partial_sum_in(psum_wire[28][18]), .a_out(a_wire[28][19]), .partial_sum_out(psum_wire[29][18]));
    PE_Wn63 pe_28_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][19]), .partial_sum_in(psum_wire[28][19]), .a_out(a_wire[28][20]), .partial_sum_out(psum_wire[29][19]));
    PE_Wn33 pe_28_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][20]), .partial_sum_in(psum_wire[28][20]), .a_out(a_wire[28][21]), .partial_sum_out(psum_wire[29][20]));
    PE_Wp16 pe_28_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][21]), .partial_sum_in(psum_wire[28][21]), .a_out(a_wire[28][22]), .partial_sum_out(psum_wire[29][21]));
    PE_Wn25 pe_28_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][22]), .partial_sum_in(psum_wire[28][22]), .a_out(a_wire[28][23]), .partial_sum_out(psum_wire[29][22]));
    PE_Wp9 pe_28_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][23]), .partial_sum_in(psum_wire[28][23]), .a_out(a_wire[28][24]), .partial_sum_out(psum_wire[29][23]));
    PE_Wn30 pe_28_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][24]), .partial_sum_in(psum_wire[28][24]), .a_out(a_wire[28][25]), .partial_sum_out(psum_wire[29][24]));
    PE_Wn74 pe_28_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][25]), .partial_sum_in(psum_wire[28][25]), .a_out(a_wire[28][26]), .partial_sum_out(psum_wire[29][25]));
    PE_Wn19 pe_28_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][26]), .partial_sum_in(psum_wire[28][26]), .a_out(a_wire[28][27]), .partial_sum_out(psum_wire[29][26]));
    PE_Wp37 pe_28_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][27]), .partial_sum_in(psum_wire[28][27]), .a_out(a_wire[28][28]), .partial_sum_out(psum_wire[29][27]));
    PE_Wn18 pe_28_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][28]), .partial_sum_in(psum_wire[28][28]), .a_out(a_wire[28][29]), .partial_sum_out(psum_wire[29][28]));
    PE_Wn37 pe_28_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][29]), .partial_sum_in(psum_wire[28][29]), .a_out(a_wire[28][30]), .partial_sum_out(psum_wire[29][29]));
    PE_Wn64 pe_28_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][30]), .partial_sum_in(psum_wire[28][30]), .a_out(a_wire[28][31]), .partial_sum_out(psum_wire[29][30]));
    PE_Wp1 pe_28_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[28][31]), .partial_sum_in(psum_wire[28][31]), .a_out(a_wire[28][32]), .partial_sum_out(psum_wire[29][31]));
    PE_Wn45 pe_29_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][0]), .partial_sum_in(psum_wire[29][0]), .a_out(a_wire[29][1]), .partial_sum_out(psum_wire[30][0]));
    PE_Wn35 pe_29_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][1]), .partial_sum_in(psum_wire[29][1]), .a_out(a_wire[29][2]), .partial_sum_out(psum_wire[30][1]));
    PE_Wn39 pe_29_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][2]), .partial_sum_in(psum_wire[29][2]), .a_out(a_wire[29][3]), .partial_sum_out(psum_wire[30][2]));
    PE_Wn15 pe_29_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][3]), .partial_sum_in(psum_wire[29][3]), .a_out(a_wire[29][4]), .partial_sum_out(psum_wire[30][3]));
    PE_Wn36 pe_29_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][4]), .partial_sum_in(psum_wire[29][4]), .a_out(a_wire[29][5]), .partial_sum_out(psum_wire[30][4]));
    PE_Wn4 pe_29_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][5]), .partial_sum_in(psum_wire[29][5]), .a_out(a_wire[29][6]), .partial_sum_out(psum_wire[30][5]));
    PE_Wn55 pe_29_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][6]), .partial_sum_in(psum_wire[29][6]), .a_out(a_wire[29][7]), .partial_sum_out(psum_wire[30][6]));
    PE_Wp32 pe_29_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][7]), .partial_sum_in(psum_wire[29][7]), .a_out(a_wire[29][8]), .partial_sum_out(psum_wire[30][7]));
    PE_Wp26 pe_29_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][8]), .partial_sum_in(psum_wire[29][8]), .a_out(a_wire[29][9]), .partial_sum_out(psum_wire[30][8]));
    PE_Wn5 pe_29_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][9]), .partial_sum_in(psum_wire[29][9]), .a_out(a_wire[29][10]), .partial_sum_out(psum_wire[30][9]));
    PE_Wn48 pe_29_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][10]), .partial_sum_in(psum_wire[29][10]), .a_out(a_wire[29][11]), .partial_sum_out(psum_wire[30][10]));
    PE_Wp18 pe_29_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][11]), .partial_sum_in(psum_wire[29][11]), .a_out(a_wire[29][12]), .partial_sum_out(psum_wire[30][11]));
    PE_Wn38 pe_29_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][12]), .partial_sum_in(psum_wire[29][12]), .a_out(a_wire[29][13]), .partial_sum_out(psum_wire[30][12]));
    PE_Wp79 pe_29_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][13]), .partial_sum_in(psum_wire[29][13]), .a_out(a_wire[29][14]), .partial_sum_out(psum_wire[30][13]));
    PE_Wp23 pe_29_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][14]), .partial_sum_in(psum_wire[29][14]), .a_out(a_wire[29][15]), .partial_sum_out(psum_wire[30][14]));
    PE_Wp38 pe_29_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][15]), .partial_sum_in(psum_wire[29][15]), .a_out(a_wire[29][16]), .partial_sum_out(psum_wire[30][15]));
    PE_Wn14 pe_29_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][16]), .partial_sum_in(psum_wire[29][16]), .a_out(a_wire[29][17]), .partial_sum_out(psum_wire[30][16]));
    PE_Wn47 pe_29_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][17]), .partial_sum_in(psum_wire[29][17]), .a_out(a_wire[29][18]), .partial_sum_out(psum_wire[30][17]));
    PE_Wn39 pe_29_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][18]), .partial_sum_in(psum_wire[29][18]), .a_out(a_wire[29][19]), .partial_sum_out(psum_wire[30][18]));
    PE_Wn61 pe_29_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][19]), .partial_sum_in(psum_wire[29][19]), .a_out(a_wire[29][20]), .partial_sum_out(psum_wire[30][19]));
    PE_Wp2 pe_29_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][20]), .partial_sum_in(psum_wire[29][20]), .a_out(a_wire[29][21]), .partial_sum_out(psum_wire[30][20]));
    PE_Wp37 pe_29_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][21]), .partial_sum_in(psum_wire[29][21]), .a_out(a_wire[29][22]), .partial_sum_out(psum_wire[30][21]));
    PE_Wp8 pe_29_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][22]), .partial_sum_in(psum_wire[29][22]), .a_out(a_wire[29][23]), .partial_sum_out(psum_wire[30][22]));
    PE_Wp16 pe_29_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][23]), .partial_sum_in(psum_wire[29][23]), .a_out(a_wire[29][24]), .partial_sum_out(psum_wire[30][23]));
    PE_Wp41 pe_29_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][24]), .partial_sum_in(psum_wire[29][24]), .a_out(a_wire[29][25]), .partial_sum_out(psum_wire[30][24]));
    PE_Wn24 pe_29_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][25]), .partial_sum_in(psum_wire[29][25]), .a_out(a_wire[29][26]), .partial_sum_out(psum_wire[30][25]));
    PE_Wn32 pe_29_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][26]), .partial_sum_in(psum_wire[29][26]), .a_out(a_wire[29][27]), .partial_sum_out(psum_wire[30][26]));
    PE_Wp0 pe_29_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][27]), .partial_sum_in(psum_wire[29][27]), .a_out(a_wire[29][28]), .partial_sum_out(psum_wire[30][27]));
    PE_Wn40 pe_29_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][28]), .partial_sum_in(psum_wire[29][28]), .a_out(a_wire[29][29]), .partial_sum_out(psum_wire[30][28]));
    PE_Wn7 pe_29_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][29]), .partial_sum_in(psum_wire[29][29]), .a_out(a_wire[29][30]), .partial_sum_out(psum_wire[30][29]));
    PE_Wn79 pe_29_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][30]), .partial_sum_in(psum_wire[29][30]), .a_out(a_wire[29][31]), .partial_sum_out(psum_wire[30][30]));
    PE_Wn79 pe_29_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[29][31]), .partial_sum_in(psum_wire[29][31]), .a_out(a_wire[29][32]), .partial_sum_out(psum_wire[30][31]));
    PE_Wn5 pe_30_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][0]), .partial_sum_in(psum_wire[30][0]), .a_out(a_wire[30][1]), .partial_sum_out(psum_wire[31][0]));
    PE_Wn6 pe_30_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][1]), .partial_sum_in(psum_wire[30][1]), .a_out(a_wire[30][2]), .partial_sum_out(psum_wire[31][1]));
    PE_Wp18 pe_30_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][2]), .partial_sum_in(psum_wire[30][2]), .a_out(a_wire[30][3]), .partial_sum_out(psum_wire[31][2]));
    PE_Wn29 pe_30_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][3]), .partial_sum_in(psum_wire[30][3]), .a_out(a_wire[30][4]), .partial_sum_out(psum_wire[31][3]));
    PE_Wp43 pe_30_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][4]), .partial_sum_in(psum_wire[30][4]), .a_out(a_wire[30][5]), .partial_sum_out(psum_wire[31][4]));
    PE_Wn67 pe_30_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][5]), .partial_sum_in(psum_wire[30][5]), .a_out(a_wire[30][6]), .partial_sum_out(psum_wire[31][5]));
    PE_Wn44 pe_30_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][6]), .partial_sum_in(psum_wire[30][6]), .a_out(a_wire[30][7]), .partial_sum_out(psum_wire[31][6]));
    PE_Wn42 pe_30_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][7]), .partial_sum_in(psum_wire[30][7]), .a_out(a_wire[30][8]), .partial_sum_out(psum_wire[31][7]));
    PE_Wp26 pe_30_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][8]), .partial_sum_in(psum_wire[30][8]), .a_out(a_wire[30][9]), .partial_sum_out(psum_wire[31][8]));
    PE_Wp1 pe_30_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][9]), .partial_sum_in(psum_wire[30][9]), .a_out(a_wire[30][10]), .partial_sum_out(psum_wire[31][9]));
    PE_Wn14 pe_30_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][10]), .partial_sum_in(psum_wire[30][10]), .a_out(a_wire[30][11]), .partial_sum_out(psum_wire[31][10]));
    PE_Wp40 pe_30_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][11]), .partial_sum_in(psum_wire[30][11]), .a_out(a_wire[30][12]), .partial_sum_out(psum_wire[31][11]));
    PE_Wn100 pe_30_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][12]), .partial_sum_in(psum_wire[30][12]), .a_out(a_wire[30][13]), .partial_sum_out(psum_wire[31][12]));
    PE_Wp85 pe_30_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][13]), .partial_sum_in(psum_wire[30][13]), .a_out(a_wire[30][14]), .partial_sum_out(psum_wire[31][13]));
    PE_Wn95 pe_30_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][14]), .partial_sum_in(psum_wire[30][14]), .a_out(a_wire[30][15]), .partial_sum_out(psum_wire[31][14]));
    PE_Wp47 pe_30_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][15]), .partial_sum_in(psum_wire[30][15]), .a_out(a_wire[30][16]), .partial_sum_out(psum_wire[31][15]));
    PE_Wp12 pe_30_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][16]), .partial_sum_in(psum_wire[30][16]), .a_out(a_wire[30][17]), .partial_sum_out(psum_wire[31][16]));
    PE_Wp15 pe_30_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][17]), .partial_sum_in(psum_wire[30][17]), .a_out(a_wire[30][18]), .partial_sum_out(psum_wire[31][17]));
    PE_Wn47 pe_30_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][18]), .partial_sum_in(psum_wire[30][18]), .a_out(a_wire[30][19]), .partial_sum_out(psum_wire[31][18]));
    PE_Wn1 pe_30_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][19]), .partial_sum_in(psum_wire[30][19]), .a_out(a_wire[30][20]), .partial_sum_out(psum_wire[31][19]));
    PE_Wp19 pe_30_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][20]), .partial_sum_in(psum_wire[30][20]), .a_out(a_wire[30][21]), .partial_sum_out(psum_wire[31][20]));
    PE_Wn10 pe_30_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][21]), .partial_sum_in(psum_wire[30][21]), .a_out(a_wire[30][22]), .partial_sum_out(psum_wire[31][21]));
    PE_Wp39 pe_30_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][22]), .partial_sum_in(psum_wire[30][22]), .a_out(a_wire[30][23]), .partial_sum_out(psum_wire[31][22]));
    PE_Wp1 pe_30_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][23]), .partial_sum_in(psum_wire[30][23]), .a_out(a_wire[30][24]), .partial_sum_out(psum_wire[31][23]));
    PE_Wp40 pe_30_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][24]), .partial_sum_in(psum_wire[30][24]), .a_out(a_wire[30][25]), .partial_sum_out(psum_wire[31][24]));
    PE_Wp1 pe_30_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][25]), .partial_sum_in(psum_wire[30][25]), .a_out(a_wire[30][26]), .partial_sum_out(psum_wire[31][25]));
    PE_Wp13 pe_30_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][26]), .partial_sum_in(psum_wire[30][26]), .a_out(a_wire[30][27]), .partial_sum_out(psum_wire[31][26]));
    PE_Wp46 pe_30_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][27]), .partial_sum_in(psum_wire[30][27]), .a_out(a_wire[30][28]), .partial_sum_out(psum_wire[31][27]));
    PE_Wn16 pe_30_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][28]), .partial_sum_in(psum_wire[30][28]), .a_out(a_wire[30][29]), .partial_sum_out(psum_wire[31][28]));
    PE_Wp17 pe_30_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][29]), .partial_sum_in(psum_wire[30][29]), .a_out(a_wire[30][30]), .partial_sum_out(psum_wire[31][29]));
    PE_Wn19 pe_30_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][30]), .partial_sum_in(psum_wire[30][30]), .a_out(a_wire[30][31]), .partial_sum_out(psum_wire[31][30]));
    PE_Wp20 pe_30_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[30][31]), .partial_sum_in(psum_wire[30][31]), .a_out(a_wire[30][32]), .partial_sum_out(psum_wire[31][31]));
    PE_Wp65 pe_31_0 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][0]), .partial_sum_in(psum_wire[31][0]), .a_out(a_wire[31][1]), .partial_sum_out(psum_wire[32][0]));
    PE_Wp12 pe_31_1 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][1]), .partial_sum_in(psum_wire[31][1]), .a_out(a_wire[31][2]), .partial_sum_out(psum_wire[32][1]));
    PE_Wp25 pe_31_2 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][2]), .partial_sum_in(psum_wire[31][2]), .a_out(a_wire[31][3]), .partial_sum_out(psum_wire[32][2]));
    PE_Wn22 pe_31_3 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][3]), .partial_sum_in(psum_wire[31][3]), .a_out(a_wire[31][4]), .partial_sum_out(psum_wire[32][3]));
    PE_Wn15 pe_31_4 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][4]), .partial_sum_in(psum_wire[31][4]), .a_out(a_wire[31][5]), .partial_sum_out(psum_wire[32][4]));
    PE_Wp12 pe_31_5 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][5]), .partial_sum_in(psum_wire[31][5]), .a_out(a_wire[31][6]), .partial_sum_out(psum_wire[32][5]));
    PE_Wn36 pe_31_6 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][6]), .partial_sum_in(psum_wire[31][6]), .a_out(a_wire[31][7]), .partial_sum_out(psum_wire[32][6]));
    PE_Wp16 pe_31_7 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][7]), .partial_sum_in(psum_wire[31][7]), .a_out(a_wire[31][8]), .partial_sum_out(psum_wire[32][7]));
    PE_Wn10 pe_31_8 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][8]), .partial_sum_in(psum_wire[31][8]), .a_out(a_wire[31][9]), .partial_sum_out(psum_wire[32][8]));
    PE_Wn7 pe_31_9 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][9]), .partial_sum_in(psum_wire[31][9]), .a_out(a_wire[31][10]), .partial_sum_out(psum_wire[32][9]));
    PE_Wp38 pe_31_10 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][10]), .partial_sum_in(psum_wire[31][10]), .a_out(a_wire[31][11]), .partial_sum_out(psum_wire[32][10]));
    PE_Wn25 pe_31_11 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][11]), .partial_sum_in(psum_wire[31][11]), .a_out(a_wire[31][12]), .partial_sum_out(psum_wire[32][11]));
    PE_Wp117 pe_31_12 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][12]), .partial_sum_in(psum_wire[31][12]), .a_out(a_wire[31][13]), .partial_sum_out(psum_wire[32][12]));
    PE_Wn31 pe_31_13 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][13]), .partial_sum_in(psum_wire[31][13]), .a_out(a_wire[31][14]), .partial_sum_out(psum_wire[32][13]));
    PE_Wn11 pe_31_14 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][14]), .partial_sum_in(psum_wire[31][14]), .a_out(a_wire[31][15]), .partial_sum_out(psum_wire[32][14]));
    PE_Wn11 pe_31_15 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][15]), .partial_sum_in(psum_wire[31][15]), .a_out(a_wire[31][16]), .partial_sum_out(psum_wire[32][15]));
    PE_Wp0 pe_31_16 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][16]), .partial_sum_in(psum_wire[31][16]), .a_out(a_wire[31][17]), .partial_sum_out(psum_wire[32][16]));
    PE_Wp15 pe_31_17 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][17]), .partial_sum_in(psum_wire[31][17]), .a_out(a_wire[31][18]), .partial_sum_out(psum_wire[32][17]));
    PE_Wp32 pe_31_18 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][18]), .partial_sum_in(psum_wire[31][18]), .a_out(a_wire[31][19]), .partial_sum_out(psum_wire[32][18]));
    PE_Wp11 pe_31_19 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][19]), .partial_sum_in(psum_wire[31][19]), .a_out(a_wire[31][20]), .partial_sum_out(psum_wire[32][19]));
    PE_Wp35 pe_31_20 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][20]), .partial_sum_in(psum_wire[31][20]), .a_out(a_wire[31][21]), .partial_sum_out(psum_wire[32][20]));
    PE_Wp95 pe_31_21 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][21]), .partial_sum_in(psum_wire[31][21]), .a_out(a_wire[31][22]), .partial_sum_out(psum_wire[32][21]));
    PE_Wn12 pe_31_22 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][22]), .partial_sum_in(psum_wire[31][22]), .a_out(a_wire[31][23]), .partial_sum_out(psum_wire[32][22]));
    PE_Wp0 pe_31_23 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][23]), .partial_sum_in(psum_wire[31][23]), .a_out(a_wire[31][24]), .partial_sum_out(psum_wire[32][23]));
    PE_Wn20 pe_31_24 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][24]), .partial_sum_in(psum_wire[31][24]), .a_out(a_wire[31][25]), .partial_sum_out(psum_wire[32][24]));
    PE_Wp99 pe_31_25 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][25]), .partial_sum_in(psum_wire[31][25]), .a_out(a_wire[31][26]), .partial_sum_out(psum_wire[32][25]));
    PE_Wn20 pe_31_26 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][26]), .partial_sum_in(psum_wire[31][26]), .a_out(a_wire[31][27]), .partial_sum_out(psum_wire[32][26]));
    PE_Wn19 pe_31_27 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][27]), .partial_sum_in(psum_wire[31][27]), .a_out(a_wire[31][28]), .partial_sum_out(psum_wire[32][27]));
    PE_Wn29 pe_31_28 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][28]), .partial_sum_in(psum_wire[31][28]), .a_out(a_wire[31][29]), .partial_sum_out(psum_wire[32][28]));
    PE_Wn42 pe_31_29 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][29]), .partial_sum_in(psum_wire[31][29]), .a_out(a_wire[31][30]), .partial_sum_out(psum_wire[32][29]));
    PE_Wn25 pe_31_30 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][30]), .partial_sum_in(psum_wire[31][30]), .a_out(a_wire[31][31]), .partial_sum_out(psum_wire[32][30]));
    PE_Wp15 pe_31_31 (
    `ifdef USE_POWER_PINS
        .VPWR(VPWR), .VGND(VGND),
    `endif
        .clk(clk), .rst_n(rst_n), .a_in(a_wire[31][31]), .partial_sum_in(psum_wire[31][31]), .a_out(a_wire[31][32]), .partial_sum_out(psum_wire[32][31]));

endmodule
