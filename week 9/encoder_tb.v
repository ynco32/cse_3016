`timescale 1ns / 1ps


module encoder_tb;
reg inA;
reg inB;
reg inC;
reg inD;
wire out1;
wire out2;

encoder u_e(
.in0 (inA ),
.in1 (inB ),
.in2 (inC ),
.in3 (inD ),
.outA (out1 ),
.outB(out2 ) );

initial inA = 1'b0;
initial inB = 1'b0;
initial inC = 1'b0;
initial inD = 1'b0;

always inA = #500 ~ inA;
always inB = #250 ~ inB;
always inC = #125 ~ inC;
always inD = #62.5 ~ inD;

initial begin
    #1000
    $finish;
end
endmodule
