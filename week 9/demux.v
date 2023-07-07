`timescale 1ns / 1ps

module demux(
input inF,
input ina,
input inb, 
output outA,
output outB,
output outC,
output outD
    );
    
    assign outA = inF & (~ina) & (~inb);
    assign outB = inF & (~ina) & (inb);
    assign outC = inF & (ina) & (~inb);
    assign outD = inF & (ina) & (inb);
endmodule
