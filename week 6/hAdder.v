`timescale 1ns / 1ps



module hAdder(
    input A,
    input B,
    output S,
    output C_out
    );
    
    assign S = A ^ B;
    assign C_out = A & B;
    
endmodule
