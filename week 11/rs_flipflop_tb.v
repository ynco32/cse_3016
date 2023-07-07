`timescale 1ns / 1ps


module rs_flipflop_tb;

reg rr;
reg ss;
reg cc;

wire qq;
wire qqbb;


rs_flipflop user_rs(
.inR(rr ),
.inS(ss ),
.clk(cc ),
.outQ(qq ),
.outQb(qqbb ) );

initial rr = 1'b0;
initial ss = 1'b0;
initial cc = 1'b0;


always cc = #50 ~ cc;

initial begin
rr = 1'b0; ss = 1'b0; #100;
rr = 1'b0; ss = 1'b1; #100;
rr = 1'b1; ss = 1'b0; #100;

rr = 1'b0; ss = 1'b0; #100;
rr = 1'b0; ss = 1'b1; #100;
rr = 1'b1; ss = 1'b0; #100;

rr = 1'b0; ss = 1'b1; #100;
rr = 1'b0; ss = 1'b0; #100;
rr = 1'b1; ss = 1'b0; #100;


rr = 1'b0; ss = 1'b1; #100;
rr = 1'b1; ss = 1'b0; #100;
rr = 1'b0; ss = 1'b0; #100;



    #1200
    $finish;
end


endmodule
