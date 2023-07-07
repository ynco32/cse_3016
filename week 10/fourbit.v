`timescale 1ns / 1ps



module fourbit(A4, B4, sum4, Cin4, Cout4, signal);

input [3:0] A4, B4;
input Cin4;
input signal;

output [3:0] sum4;
output Cout4;


wire [3:0] A4, B4, sum4, B_s;
wire C0;
wire C1;
wire C2;
wire C3;




assign B_s[0] = B4[0] ^ signal;
assign B_s[1] = B4[1] ^ signal;
assign B_s[2] = B4[2] ^ signal;
assign B_s[3] = B4[3] ^ signal;

assign Cout4 = C3 ^ signal;



onebit f0(A4[0],B_s[0], signal, sum4[0], C0);
onebit f1(A4[1],B_s[1], C0, sum4[1], C1);
onebit f2(A4[2],B_s[2], C1, sum4[2], C2);
onebit f3(A4[3],B_s[3], C2, sum4[3], Cout4);
            
            
endmodule
