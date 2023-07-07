`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/29 14:59:57
// Design Name: 
// Module Name: f_nand
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


module f_nand(
  input a,
  input b,
  input c,
  input d,
  output y,
  output e,
  output f,
  output g
    );
    
    
    assign y = ~(a & b & c & d); //(A)
    assign e = ~(a & b); //(B)
    assign f = ~(e & c);
    assign g = ~(e & f);
    
endmodule
