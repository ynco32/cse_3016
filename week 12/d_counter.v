`timescale 1ns / 1ps


module d_counter(
input clk,
    input rst,
    output reg [3:0] cout
    );
    
    always @(posedge clk)
    if (rst == 1 ) cout = 4'b0000;
    else if (cout < 4'b1001) cout = cout+1;
    else cout = 4'b0000;
endmodule
