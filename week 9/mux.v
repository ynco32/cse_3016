`timescale 1ns / 1ps

module mux(
input ina,
input inb,
input inA,
input inB,
input inC,
input inD,
output outM
    );
    
    assign outM = (~ina)&(~inb)&inA | (~ina)&inb&inB | ina&(~inb)&inC | ina&inb&inD;
endmodule
