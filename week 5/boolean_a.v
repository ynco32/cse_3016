`timescale 1ns / 1ps

module boolean_a(
    input inputA,
    input inputB,
    input inputC,
    output outputD
    );
    
    assign outputD = (((~inputA)|(~inputB)))&(~inputC); //(A)

endmodule
