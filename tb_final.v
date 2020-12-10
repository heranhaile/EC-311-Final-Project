`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2020 05:42:35 PM
// Design Name: 
// Module Name: tb_final
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


module tb_final();
reg clk;
reg reset;
reg [5:0] a;
reg [5:0] b;
reg more;
//reg [5:0] next;
//wire c_out;
wire [7:0] pt_sum;
wire [7:0] coin_sum;

ALU_design_lab2 A1(.clk(clk),.reset(reset),.a(a),.b(b),.more(more),.pt_sum(pt_sum),.coin_sum(coin_sum));

 initial begin 
  clk = 0;
  reset = 0;
  more = 0;
  forever #20 clk = ~clk;
 end
 
 initial begin
 #10 reset = 1; more = 1;
 #20 reset = 0;
 #10 reset = 1; more = 0;
 #10 more = 1;
 end
 
endmodule
