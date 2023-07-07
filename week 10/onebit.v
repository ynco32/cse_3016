`timescale 1ns / 1ps




module onebit(A, B, Cin, sum, Cout);

input A;
input B;
input Cin;
output sum;
output Cout;


assign sum = A ^ B ^ Cin;
assign Cout = (A&Cin) | (A&B) | (B&Cin);



endmodule
