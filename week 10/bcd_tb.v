`timescale 1ns / 1ps


module bcd_tb;

reg [0:3] aa;
reg [0:3] bb;
reg cc;

wire [0:3] ssum;
wire ccout;


bcd u_p_adder(
.A (aa ),
.B (bb ),
.Cin (cc ),
.sum (ssum ),
.Cout (ccout ) );



initial cc = 1'b0;

always cc = #100 ~ cc;

initial begin

aa = 4'b1001; bb = 4'b0001; #200
aa = 4'b1001; bb = 4'b0101; #200
aa = 4'b0101; bb = 4'b0101; #200
aa = 4'b0011; bb = 4'b0101; #200
aa = 4'b1001; bb = 4'b0101; #200


    #1000
    $finish;
end


endmodule
