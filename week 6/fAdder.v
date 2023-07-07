`timescale 1ns / 1ps


module fAdder(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
    );
    
    assign S = (A ^ B) ^ Cin;
    assign Cout = Cin & (A ^ B) | A & B;
endmodule


