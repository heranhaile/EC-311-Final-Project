`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2020 02:33:51 PM
// Design Name: 
// Module Name: BCD_tb
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


module BCD_tb();
reg [7:0] binary;
wire [3:0] Hundreds;
wire [3:0] Tens;
wire [3:0] Ones;

binary_BCD_design bbd(binary,Hundreds,Tens,Ones);

initial begin 
#10 binary = 8'b00101111;
#10 binary = 8'b11010001;
end

endmodule
