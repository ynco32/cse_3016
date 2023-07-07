`timescale 1ns / 1ps


module fSub_tb;
reg aa;
reg bb;
reg bbin;
wire dd;
wire bbout;

fSub u_fSub (
.A (aa ),
.B (bb ),
.bin (bbin ),
.D (dd ),
.bout (bbout ) );

initial aa = 1'b0;
initial bb = 1'b0;
initial bbin = 1'b0;

always aa = # 125 ~ aa;
always bb = # 250 ~bb;
always bbin = #500 ~bbin;

initial begin
    #1000
    $finish;
 end

endmodule
