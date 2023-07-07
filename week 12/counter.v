`timescale 1ns / 1ps

module counter(
    input clk,
    input rst,
    output reg [1:0] cout
    );
    
    always @(posedge clk)
    if (rst == 1 ) cout = 2'b00;
    else cout = cout+1;
    
endmodule

