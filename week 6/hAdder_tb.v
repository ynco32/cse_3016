`timescale 1ns / 1ps


module hAdder_tb;
reg aa;
reg bb;
wire ss;
wire cc;

hAdder u_hAdder (
.A (aa ),
.B (bb ),
.S (ss ),
.C_out (cc ) );

initial aa = 1'b0;
initial bb = 1'b0;

always aa = # 250 ~ aa;
always bb = # 500 ~bb;

initial begin
    #1000
    $finish;
 end



endmodule
