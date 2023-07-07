`timescale 1ns / 1ps


module d_flipflop_tb;
reg dd;
reg cc;

wire qq;
wire qqbb;


d_flipflop user_d(
.inD(dd ),
.clk(cc ),
.outQ(qq ),
.outQb(qqbb ) );

initial dd = 1'b0;
initial cc = 1'b0;


always cc = #50 ~ cc;


initial begin
    dd = 1'b0; #100;
    dd = 1'b1; #100;
    dd = 1'b0; #100;
    dd = 1'b1; #100;
    dd = 1'b0; #200;
    dd = 1'b1; #200;
    dd = 1'b0; #100;
    dd = 1'b1; #100;
    
    #1000
    $finish;
end

endmodule
