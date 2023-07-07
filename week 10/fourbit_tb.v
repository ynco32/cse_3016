`timescale 1ns / 1ps


module fourbit_tb;

reg sig;
reg [0:3] aa;
reg [0:3] bb;
reg cc;

wire [0:3] ssum;
wire ccout;


fourbit u_p_adder(
.A4 (aa ),
.B4 (bb ),
.sum4 (ssum ),
.Cin4 (cc ),
.Cout4 (ccout ),
.signal (sig ) );

initial cc = 1'b0;
initial sig = 1'b0;

always cc = #50 ~ cc;
always sig = #100 ~ sig;

initial begin



aa = 4'b1001; bb = 4'b0001; #200
aa = 4'b1001; bb = 4'b0101; #200
aa = 4'b1101; bb = 4'b0101; #200
aa = 4'b1011; bb = 4'b0101; #200
aa = 4'b1001; bb = 4'b0101; #200


    #1000
    $finish;
end


endmodule
