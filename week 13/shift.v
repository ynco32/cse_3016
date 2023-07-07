`timescale 1ns / 1ps

module shift(
    input clk,
    input rst,
    input in,
    output reg [3:0] out
    );
    
    
    
    always @(posedge clk)
    begin
       if (rst) out = 4'b0001;
        else 
            out = {out[2:0], in};
       end
endmodule


