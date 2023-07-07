`timescale 1ns / 1ps


module hSub(
    input A,
    input B,
    output D,
    output borrow
    );
    
    assign D = A ^ B;
    assign borrow = (~A) & B;
endmodule
