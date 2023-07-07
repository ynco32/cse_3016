`timescale 1ns / 1ps


module mux_tb;
reg in0;
reg in1;
reg in2;
reg in3;
reg aa;
reg bb;
wire out1;

mux u_mux(
.ina (aa ),
.inb (bb ),
.inA (in0 ),
.inB (in1 ),
.inC (in2 ),
.inD (in3 ),
.outM (out1 ) );

initial bb = 1'b0;
initial aa = 1'b0;
initial in0 = 1'b0;
initial in1 = 1'b0;
initial in2 = 1'b0;
initial in3 = 1'b0;

always aa = #500 ~ aa;
always bb = #250 ~ bb;

always in0 = #500 ~ in0;
always in1 = #250 ~ in1;
always in2 = #125 ~ in2;
always in3 = #62.5 ~ in3;

initial begin
    #1000
    $finish;
end
endmodule
