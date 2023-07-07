
`timescale 1ns / 1ps


module bcd(
input inA,
input inB,
input inC,
input inD,
//output out0,
output out1,
output out2,
output out3,
output out4,
output out5,
output out6,
output out7,
output out8,
output out9
    );
    
//    assign out0= (~inA)&(~inB)&(~inC)&(~inD);  //A'b'c'd'
    assign out1 = (inA)&(~inB)&(~inC)&(~inD);   //ab'c'd'
    assign out2 = (~inA)&(inB)&(~inC)&(~inD);   //a'bc'd'
    assign out3 = (inA)&(inB)&(~inC)&(~inD);    //abc'd'
    assign out4 = (~inA)&(~inB)&(inC)&(~inD);    //a'b'cd'
    assign out5 = (inA)&(~inB)&(inC)&(~inD);    //ab'cd'
    assign out6 = (~inA)&(inB)&(inC)&(~inD);    //a'bcd'    
    assign out7 = (inA)&(inB)&(inC)&(~inD);    //abcd'
    assign out8 = (~inA)&(~inB)&(~inC)&(inD);      //a'b'c'd
    assign out9 = (inA)&(~inB)&(~inC)&(inD);      //ab'c'd
    
    
    
endmodule
