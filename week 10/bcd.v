`timescale 1ns / 1ps



module bcd(A, B, Cin, sum, Cout);
input [3:0] A, B;
input Cin;

output [3:0] sum;
output Cout;

wire [1:0] w;
wire [3:0] B2;
wire [3:0] newSum;
wire c;
wire cout2;
wire temp;

//module p_adder(A4, B4, sum4, Cin4, Cout4);
p_adder f0 (A, B, newSum, Cin, cout2);

assign temp = 0;
assign w[0] = newSum[3] & newSum[2];
assign w[1] = newSum[1] & newSum[3];
assign c = w[0] | w[1] | cout2;

assign B2[0] = 0;
assign B2[1] = c;
assign B2[2] = c;
assign B2[3] = 0;



p_adder f1(newSum, B2, sum, temp, Cout);


endmodule
