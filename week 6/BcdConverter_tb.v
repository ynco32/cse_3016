`timescale 1ns / 1ps



module BcdConverter_tb;
reg aa;
reg bb;
reg cc;
reg dd;
wire ww;
wire xx;
wire yy;
wire zz;


BcdConverter u_BcdConverter (
.input0 (aa ),
.input1 (bb ),
.input2 (cc ),
.input3 (dd ),
.output0 (ww ),
.output1 (xx ),
.output2 (yy ),
.output3 (zz ) );

initial aa = 1'b0;
initial bb = 1'b0;
initial cc = 1'b0;
initial dd = 1'b0;

always aa = # 100 ~ aa;
always bb = # 200 ~bb;
always cc = # 400 ~bb;
always dd = #800 ~dd;

initial begin
    #1000
    $finish;
 end

endmodule
