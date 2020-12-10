`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2020 03:05:19 PM
// Design Name: 
// Module Name: refreshcounter_design
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


module refreshcounter_design(
input refresh_clock,
output reg [1:0] refreshcounter = 0
    );
    
always@(posedge refresh_clock) refreshcounter <= refreshcounter +1;
endmodule
