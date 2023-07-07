`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/29 15:21:45
// Design Name: 
// Module Name: f_xor_tb
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


module f_xor_tb;

reg aa;
reg bb;
reg cc;
reg dd;
wire y;
wire e;
wire f;
wire g;

f_xor u_f_xor (
.a (aa ),
.b (bb ),
.c (cc ),
.d (dd ),
.y (y ),
.e (e ),
.f (f ),
.g (g ) );

initial aa = 1'b0;
initial bb = 1'b0;
initial cc = 1'b0;
initial dd = 1'b0;
always aa = #62.5 ~aa;
always bb = #125 ~bb;
always cc = #250 ~cc;
always dd = #500 ~dd;

initial begin
    #1000
    $finish;
end

endmodule
