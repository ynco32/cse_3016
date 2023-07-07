`timescale 1ns / 1ps


module decoder(
input inA,
input inB,
output outA,
output outB,
output outC,
output outD
    );
    
    
    assign outA= (~inA)&(~inB);
    assign outB= (~inA)&inB;
    assign outC= inA&(~inB);
    assign outD= inA&inB;
    
endmodule
