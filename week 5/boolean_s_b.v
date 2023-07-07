`timescale 1ns / 1ps


module boolean_s_b(
    input inputA,
    input inputB,
    input inputC,
    output outputD
    );
    

    assign outputD = ~((inputA | inputB) & inputC); //(B)
endmodule


