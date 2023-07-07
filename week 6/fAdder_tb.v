`timescale 1ns / 1ps


module fAdder_tb;
reg aa;
reg bb;
reg cin;
wire ss;
wire cout;


fAdder u_fAdder (
.A (aa ),
.B (bb ),
.Cin (cin ),
.S (ss ),
.Cout (cout ) );

initial aa = 1'b0;
initial bb = 1'b0;
initial cin = 1'b0;

always aa = # 125 ~ aa;
always bb = # 250 ~bb;
always cin = # 500 ~bb;

initial begin
    #1000
    $finish;
 end
endmodule
