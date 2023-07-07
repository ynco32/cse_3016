`timescale 1ns / 1ps



module d2_counter(
input clk,
    input rst,
    output reg [3:0] cout
    );
    
    reg [3:0] temp;
    
    always @(posedge clk)
    if (rst == 1 )
     begin 
        cout = 4'b0000; 
        temp = 4'b0000;
        end
    

        else if (temp < 4'b1001) 
        begin
        temp = temp+1;
        cout[3] = temp[3] | temp[2]&temp[0] | temp[2]&temp[1];
        cout[2] = temp[3]| temp[2]&(~temp[0]) | temp[2]&temp[1];
        cout[1] = temp[3] | temp[2]&(~temp[1])&temp[0] | (~temp[2])&temp[1];
        cout[0] = temp[0];
        end
        
        else
        begin 
        cout = 4'b0000; 
        temp = 4'b0000;
        end
endmodule


