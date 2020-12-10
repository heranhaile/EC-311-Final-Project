`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2020 04:11:16 PM
// Design Name: 
// Module Name: seven_seg_tb
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


module seven_seg_tb();
reg clk= 0;
reg reset;
reg more =0;
reg [5:0] switch=0;
reg [5:0] button=0;
wire [3:0] anode;
wire [7:0] cathode;


//clock_top_design CTP(clk,switch, button, anode, cathode);
clock_top_design CTP(.clk(clk),.reset(reset),.more(more),.switch(switch), .button(button), .anode(anode), .cathode(cathode));
always #5 clk = ~clk;

initial 
begin
reset = 1;
#50; reset = 0;
#100 reset =1 ;
#100 switch[5:0] = 14; more = 1; //choose 1st card      
 //choose 2nd card
#100 button = 37;//a
#10000 more = 1; 
#10000 switch [5:0] = 28; //b
#10000 button = 26; 
end 
endmodule
