`timescale 1ns / 1ps


module counter_tb;

reg cc;
reg rr;

wire [1:0] outC;

counter u_counter(
.clk(cc ),
.rst(rr ),
.cout(outC ));


initial
begin
    cc = 1'b0; rr = 1'b0;
end



initial 
begin
    #25
    rr = 1;
    #80
    rr = 0;
end

always cc = #50 ~ cc;
endmodule




