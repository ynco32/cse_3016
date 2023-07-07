`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/06 14:27:13
// Design Name: 
// Module Name: boolean_s_tb
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


module boolean_s_b_tb;
reg aa;
reg bb;
reg cc;
wire dd;



boolean_s_b u_boolean_s_b (
.inputA (aa ),
.inputB (bb ),
.inputC (cc ),
.outputD (dd ) );

initial aa = 1'b0;
initial bb = 1'b0;
initial cc = 1'b0;

always aa = #125 ~aa;
always bb = #250 ~bb;
always cc = #500 ~cc;

initial begin
    #1000
    $finish;
end

endmodule
