`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2020 03:31:41 PM
// Design Name: 
// Module Name: clock_top_design
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


module clock_top_design(
input wire clk,
input wire reset,
input  more,
input  [5:0] switch,
input  [5:0] button,
output wire [3:0] anode,
output wire [7:0] cathode
    );

wire refresh_clock;
wire [1:0] refreshcounter;
wire [3:0] ONE_DIGIT;
wire [7:0] pt_sum,coin_sum;



clock_divider_design refreshclock_generator (
.clk(clk),
.divided_clk(refresh_clock)
);

ALU_design_lab2 ALU_H (
.clk(clk),    //(refresh_clock),
.reset(reset),
.a(switch),
.b(button),
.more(more),
.pt_sum(pt_sum),
.coin_sum(coin_sum)
);

refreshcounter_design rs(
.refresh_clock(refresh_clock),
.refreshcounter(refreshcounter)
);

anode_control ac(
.refreshcounter(refreshcounter),
.anode(anode)
);

BCD_control Bc(
.digit1(pt_sum[7:4]),
.digit2(pt_sum[3:0]),
.digit3(coin_sum[7:4]),
.digit4(coin_sum[3:0]),
.refreshcounter(refreshcounter),
.ONE_DIGIT(ONE_DIGIT)
);


BCD_to_cathode BtC(
.digit(ONE_DIGIT),
.cathode(cathode)
);


endmodule
