`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module top(
    input wire CLK, //board clock: 100MHz on Nexys
    input wire RST_BTN, //reset button
    output wire VGA_HS_O,       // horizontal sync output
    output wire VGA_VS_O,       // vertical sync output
    output reg [3:0] VGA_R,    // 4-bit VGA red output
    output reg [3:0] VGA_G,    // 4-bit VGA green output
    output reg [3:0] VGA_B     // 4-bit VGA blue output
    );

    wire rst = ~RST_BTN;    // reset is active low on Arty & Nexys Video
    
    // generate a 25 MHz pixel strobe
    reg [15:0] cnt;
    reg pix_stb;
    always @(posedge CLK)
        {pix_stb, cnt} <= cnt + 16'h4000;  // divide by 4: (2^16)/4 = 0x4000

    wire [9:0] x;  // current pixel x position: 10-bit value: 0-1023
    wire [8:0] y;  // current pixel y position:  9-bit value: 0-511

    vga display(
        .i_clk(CLK),
        .i_pix_stb(pix_stb),
        .i_rst(rst),
        .o_hs(VGA_HS_O), 
        .o_vs(VGA_VS_O), 
        .o_x(x), 
        .o_y(y)
    );

    wire sq_1, sq_2, sq_3, sq_4, sq_5, sq_6, sq_7, sq_8, sq_9, sq_10, sq_11, sq_12, sq_13, sq_14, sq_15, sq_16, sq_17, sq_18, sq_19, sq_20,
         sq_21, sq_22, sq_23, sq_24, sq_25, sq_26, sq_27, sq_28, sq_29, sq_30, sq_31, sq_32, sq_33, sq_34, sq_35, sq_36, sq_37, sq_38, sq_39, sq_40; // make cards out of rectangular boxe
    
    assign sq_1 = ((x > 50) & (y >  60) & (x < 86) & (y < 120)) ? 1 : 0;
    assign sq_2 = ((x > 106) & (y > 60) & (x < 142) & (y < 120)) ? 1 : 0;
    assign sq_3 = ((x > 162) & (y > 60) & (x < 198) & (y < 120)) ? 1 : 0;
    assign sq_4 = ((x > 218) & (y > 60) & (x < 254) & (y < 120)) ? 1 : 0;
    assign sq_5 = ((x > 274) & (y > 60) & (x < 310) & (y < 120)) ? 1 : 0;
    assign sq_6 = ((x > 330) & (y > 60) & (x < 366) & (y < 120)) ? 1 : 0;
    assign sq_7 = ((x > 386) & (y > 60) & (x < 422) & (y < 120)) ? 1 : 0;
    assign sq_8 = ((x > 442) & (y > 60) & (x < 478) & (y < 120)) ? 1 : 0;
    assign sq_9 = ((x > 498) & (y > 60) & (x < 534) & (y < 120)) ? 1 : 0;
    assign sq_10 = ((x > 554) & (y > 60) & (x < 590) & (y < 120)) ? 1 : 0;
    assign sq_11 = ((x > 50) & (y >  160) & (x < 86) & (y < 220)) ? 1 : 0;
    assign sq_12 = ((x > 106) & (y > 160) & (x < 142) & (y < 220)) ? 1 : 0;
    assign sq_13 = ((x > 162) & (y > 160) & (x < 198) & (y < 220)) ? 1 : 0;
    assign sq_14 = ((x > 218) & (y > 160) & (x < 254) & (y < 220)) ? 1 : 0;
    assign sq_15 = ((x > 274) & (y > 160) & (x < 310) & (y < 220)) ? 1 : 0;
    assign sq_16 = ((x > 330) & (y > 160) & (x < 366) & (y < 220)) ? 1 : 0;
    assign sq_17 = ((x > 386) & (y > 160) & (x < 422) & (y < 220)) ? 1 : 0;
    assign sq_18 = ((x > 442) & (y > 160) & (x < 478) & (y < 220)) ? 1 : 0;
    assign sq_19 = ((x > 498) & (y > 160) & (x < 534) & (y < 220)) ? 1 : 0;
    assign sq_20 = ((x > 554) & (y > 160) & (x < 590) & (y < 220)) ? 1 : 0;
    assign sq_21 = ((x > 50) & (y >  260) & (x < 86) & (y < 320)) ? 1 : 0;
    assign sq_22 = ((x > 106) & (y > 260) & (x < 142) & (y < 320)) ? 1 : 0;
    assign sq_23 = ((x > 162) & (y > 260) & (x < 198) & (y < 320)) ? 1 : 0;
    assign sq_24 = ((x > 218) & (y > 260) & (x < 254) & (y < 320)) ? 1 : 0;
    assign sq_25 = ((x > 274) & (y > 260) & (x < 310) & (y < 320)) ? 1 : 0;
    assign sq_26 = ((x > 330) & (y > 260) & (x < 366) & (y < 320)) ? 1 : 0;
    assign sq_27 = ((x > 386) & (y > 260) & (x < 422) & (y < 320)) ? 1 : 0;
    assign sq_28 = ((x > 442) & (y > 260) & (x < 478) & (y < 320)) ? 1 : 0;
    assign sq_29 = ((x > 498) & (y > 260) & (x < 534) & (y < 320)) ? 1 : 0;
    assign sq_30 = ((x > 554) & (y > 260) & (x < 590) & (y < 320)) ? 1 : 0;
    assign sq_31 = ((x > 50) & (y >  360) & (x < 86) & (y < 420)) ? 1 : 0;
    assign sq_32 = ((x > 106) & (y > 360) & (x < 142) & (y < 420)) ? 1 : 0;
    assign sq_33 = ((x > 162) & (y > 360) & (x < 198) & (y < 420)) ? 1 : 0;
    assign sq_34 = ((x > 218) & (y > 360) & (x < 254) & (y < 420)) ? 1 : 0;
    assign sq_35 = ((x > 274) & (y > 360) & (x < 310) & (y < 420)) ? 1 : 0;
    assign sq_36 = ((x > 330) & (y > 360) & (x < 366) & (y < 420)) ? 1 : 0;
    assign sq_37 = ((x > 386) & (y > 360) & (x < 422) & (y < 420)) ? 1 : 0;
    assign sq_38 = ((x > 442) & (y > 360) & (x < 478) & (y < 420)) ? 1 : 0;
    assign sq_39 = ((x > 498) & (y > 360) & (x < 534) & (y < 420)) ? 1 : 0;
    assign sq_40 = ((x > 554) & (y > 360) & (x < 590) & (y < 420)) ? 1 : 0;
    
    
    //vga output
    always @ (posedge pix_stb)
    begin 
        VGA_G[3] = sq_1 | sq_2 | sq_3 | sq_4 | sq_5 | sq_6 | sq_7 | sq_8 | sq_9 | sq_10 ; //is green VGA[3]
        VGA_R[1] = sq_11 | sq_12 | sq_13 | sq_14 | sq_15 | sq_16 | sq_17 | sq_18 | sq_19 | sq_20 ;
        VGA_R[3] = sq_21 | sq_22 | sq_23 | sq_24 | sq_25 | sq_26 | sq_27 | sq_28 | sq_29 | sq_30 ;
        VGA_B[3] = sq_31 | sq_32 | sq_33 | sq_34 | sq_35 | sq_36 | sq_37 | sq_38 | sq_39 | sq_40 ;
        /* 
        if (sq_11<=1 & sq_12<=1 & sq_13<=1 & sq_14<=1 & sq_15<=1 & sq_16<=1 & sq_17<=1 & sq_18<=1 & sq_19<=1 & sq_20<=1)
        begin
            VGA_R <= 4'b1111;
            VGA_G <= 4'b1111;
            //VGA_B <= 4'b0000;
        end
        else if (sq_21<=1 & sq_22<=1 & sq_23<=1 & sq_24<=1 & sq_25<=1 & sq_26<=1 & sq_27<=1 & sq_28<=1 & sq_29<=1 & sq_30<=1)
        begin
            VGA_R <=4'b1111;
            VGA_B <= 4'b1111;
            //VGA_G <= 4'b1111; 
        */
        
    end
   
endmodule