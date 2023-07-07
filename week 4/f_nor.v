`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/29 15:09:07
// Design Name: 
// Module Name: f_nor
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


module f_nor(
    input a,
    input b,
    input c,
    input d,
    output y,
    output e,
    output f,
    output g
    );
    
    assign y = ~(a | b | c | d); //(A)
    assign e = ~(a | b); //(B)
    assign f = ~(e | c);
    assign g = ~(e | f);
    
endmodule
