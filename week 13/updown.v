`timescale 1ns / 1ps


module updown(
    input rst, clk, mode,
    output reg [3:0] udOut,
    output reg sega,
    output reg segb,
    output reg segc,
    output reg segd,
    output reg sege,
    output reg segf,
    output reg segg,
    output reg sample
    
    );
    
   initial udOut = 4'b0001;
    
    always @ (posedge clk)
    begin
        if (rst) udOut = 4'b0001;
        else 
            begin
                if (mode) 
                  begin
                    udOut = udOut -1;
                    sega = 0;
                    segf = 0;
                    segb = 1;
                    segc = 1;
                    segd = 1;
                    sege = 1;
                    segg = 1;
                    sample = 01;
                    end
                else 
                 begin
                    udOut = udOut +1;
                    sega = 0;
                    segg = 0;
                    segb = 1;
                    segc = 1;
                    segd = 1;
                    sege = 1;
                    segf = 1;
                    sample = 1;
                  end
            end 
    end
    
endmodule


