`timescale 1ns / 1ps



module d_flipflop(
outQ, outQb, inD, clk
    );
    input inD;
    input clk;
    
    output outQ;
    output outQb;
    
    assign outQ = ~(outQb | ((~inD)&clk));
    assign outQb = ~(outQ | (inD&clk));
    
endmodule
