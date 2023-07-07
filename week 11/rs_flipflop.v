`timescale 1ns / 1ps



module rs_flipflop(
outQ, outQb, inR, inS, clk
    );
    input inR;
    input inS;
    input clk;
    
    output outQ;
    output outQb;
    
    assign outQ = ~(outQb | (inR&clk));
    assign outQb = ~(outQ | (inS&clk));
    
endmodule
