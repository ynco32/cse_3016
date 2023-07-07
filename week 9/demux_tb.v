`timescale 1ns / 1ps

module demux_tb;
reg inf;
reg aa;
reg bb;
wire out1;
wire out2;
wire out3;
wire out4;

demux u_demux(
.ina (aa ),
.inb (bb ),
.inF (inf ),
.outA (out1 ),
.outB (out2 ),
.outC (out3 ),
.outD (out4 ) );

initial aa = 1'b0;
initial bb = 1'b0;
initial inf = 1'b0;

always aa = #500 ~ aa;
always bb = #250 ~ bb;
always inf = #125 ~ inf;

initial begin
    #1000
    $finish;
end

endmodule
