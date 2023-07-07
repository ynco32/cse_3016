`timescale 1ns / 1ps


module updown_tb;

reg clk, rst, mode;
wire [3:0] udOut;
wire sa;
wire sb;
wire sc;
wire sd;
wire se;
wire sf;
wire sg;
    
    
 updown u_updown (
 .clk(clk ),
 .rst(rst ),
 .udOut(udOut ),
 .mode(mode ),
 .sega (sa ),
.segb (sb ),
.segc (sc ),
.segd (sd ),
.sege (se ),
.segf (sf ),
.segg (sg )
);


initial
begin
    clk = 0; rst = 0; mode = 0;
end

always clk = #10 ~clk;
always mode =  #250 ~mode;




initial 
begin
    #25
    rst = 1;
    #80
    rst = 0;
end

endmodule
