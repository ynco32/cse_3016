`timescale 1ns / 1ps



module ring_tb;

    reg clk, rst;
    wire [3:0] rOut;
    
    
 ring u_ring (
 .clk(clk ),
 .rst(rst ),
 .rOut(rOut )
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
endmodule
