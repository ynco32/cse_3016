`timescale 1ns / 1ps



module p_adder(A4, B4, sum4, Cin4, Cout4);

input [3:0] A4, B4;
input Cin4;

output [3:0] sum4;
output Cout4;

wire C0, C1, C2;


//module adder(A, B, Cin, sum, Cout);
adder f0(A4[0],B4[0], Cin4, sum4[0], C0);
adder f1(A4[1],B4[1], C0, sum4[1], C1);
adder f2(A4[2],B4[2], C1, sum4[2], C2);
adder f3(A4[3],B4[3], C2, sum4[3], Cout4);
            
            


endmodule
