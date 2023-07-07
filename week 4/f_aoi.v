`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/29 15:25:53
// Design Name: 
// Module Name: f_aoi
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


module f_aoi(
  input a,
  input b,
  input c,
  input d,
  output e,
  output f,
  output g,
  output h
    );
    
    
    assign e = a & b; 
    assign f = c & d;
    assign g = e | f;
    assign h = ~g;
    
endmodule
