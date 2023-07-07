`timescale 1ns / 1ps



module encoder(
input in0,
input in1,
input in2,
input in3,
output outA,
output outB
    );
    
    assign outA = in3 | in2;
    assign outB = in3 | in1;
endmodule
