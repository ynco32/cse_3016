`timescale 1ns / 1ps



module decoder_tb;
reg in0;
reg in1;
wire out1;
wire out2;
wire out3;

decoder u_d(
.inA (in0 ),
.inB (in1 ),
.outA (out1 ),
.outB(out2 ),
.outC(out3 ),
.outD(out4 ) );

initial in0 = 1'b0;
initial in1 = 1'b0;

always in0 = #500 ~ in0;
always in1 = #250 ~ in1;

initial begin
    #1000
    $finish;
end
endmodule
