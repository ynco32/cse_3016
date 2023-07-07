`timescale 1ns / 1ps


module ring(
    input clk, rst,
    output reg [3:0] rOut
    );
    
    initial rOut = 4'b0001;
    
    always @ (posedge clk)
    begin
        if (rst) rOut = 4'b0001;
        else 
            rOut = {rOut[2:0], rOut[3]};
    
    end
    
endmodule
