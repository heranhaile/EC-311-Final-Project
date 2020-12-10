`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2020 05:44:29 PM
// Design Name: 
// Module Name: fib_random_tb
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


module fib_random_tb();
reg clk;
reg rst_n;

wire [4:0] data;

fib_random_design fb(.clk(clk),.rst_n(rst_n),.data(data));

 initial begin 
  clk = 0;
  forever #50 clk = ~clk;
 end
 
initial begin
 #10 rst_n = 1;
 #10 rst_n = 0;
 #10 rst_n = 1;
 end
 
 

endmodule
