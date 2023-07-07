`timescale 1ns / 1ps

module hSub_tb;
reg aa;
reg bb;
wire dd;
wire bor;

hSub u_hSub (
.A (aa ),
.B (bb ),
.D (dd ),
.borrow (bor ) );

initial aa = 1'b0;
initial bb = 1'b0;

always aa = # 250 ~ aa;
always bb = # 500 ~bb;

initial begin
    #1000
    $finish;
 end
endmodule
