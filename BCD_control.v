module BCD_control(
    input [3:0] digit1, // right most digit  
    input [3:0] digit2,
    input [3:0] digit3,//Em
    input [3:0] digit4, 
    input [1:0] refreshcounter,
    output reg [3:0] ONE_DIGIT = 0
    );
    
    always@(refreshcounter)
begin
    case(refreshcounter)
        2'd0:
            ONE_DIGIT = digit1; // right digit
        2'd1:
            ONE_DIGIT = digit2;
        2'd2:
            ONE_DIGIT = digit3;
        2'd3:
             ONE_DIGIT = digit4; // left most digit
    endcase
end
endmodule