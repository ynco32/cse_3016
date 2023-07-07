`timescale 1ns / 1ps



module bcd_tb;
reg in0;
reg in1;
reg in2;
reg in3;
wire out1;
wire out2;
wire out3;
wire out4;
wire out5;
wire out6;
wire out7;
wire out8;
wire out9;

bcd u_bcd(
.inA (in0 ),
.inB (in1 ),
.inC (in2 ),
.inD (in3 ),
.out1 (out1 ),
.out2 (out2 ),
.out3 (out3 ),
.out4 (out4 ),
.out5 (out5 ),
.out6 (out6 ),
.out7 (out7 ),
.out8 (out8 ),
.out9 (out9 ) );

initial in0 = 1'b0;
initial in1 = 1'b0;
initial in2 = 1'b0;
initial in3 = 1'b0;

always in0 = #500 ~ in0;
always in1 = #250 ~ in1;
always in2 = #125 ~ in2;
always in3 = #62.5 ~ in3;

initial begin
    #1000
    $finish;
end
endmodule
