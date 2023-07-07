`timescale 1ns / 1ps


module shift_tb;

 reg clk, rst, in;
 wire [3:0] out;
    
    
shift u_shift (
 .clk(clk ),
 .rst(rst ),
 .in(in ),
 .out(out )
);

initial
begin
    clk = 0; rst = 0;
end

always clk = #50 ~clk;




initial 
begin
    #25
    rst = 1;
    #80
    rst = 0;
    
    #200 
    rst = 1;
    #250
    rst = 0;
end

initial 
begin
    #50
    in = 1;
    #100
    in = 0;
    
    #500 
    in = 1;
    #550
    in = 0;
end



endmodule
