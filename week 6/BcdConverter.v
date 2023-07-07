`timescale 1ns / 1ps


module BcdConverter(
    input input0,
    input input1,
    input input2,
    input input3,
    output output0,
    output output1,
    output output2,
    output output3
    );
    
    assign output3 = input3 | input2 &input0 | input2 & input1;
    assign output2 = input3 | input2 & (~input0) | input2 & input1;
    assign output1 = input3 | (~input2) & input1 | input2 & (~input1) & input0;
    assign output0 = input0;
    
endmodule
