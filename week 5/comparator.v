`timescale 1ns / 1ps

module comparator(
    input inputA,
    input inputB,
    output outputC,
    output outputD,
    output outputE,
    output outputF
    );
    
    assign outputC = ~(inputA ^ inputB); //A=B
    assign outputD = (inputA ^ inputB); //A!=B
    assign outputE = (inputA) & (~inputB); //A>B
    assign outputF = (~inputA) & (inputB); //A<B


endmodule
