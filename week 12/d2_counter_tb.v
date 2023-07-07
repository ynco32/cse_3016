`timescale 1ns / 1ps


module d2_counter_tb;
reg cc;
reg rr;

wire [3:0] outC;

d2_counter u_d2_counter(
.clk(cc ),
.rst(rr ),
.cout(outC ));


initial
begin
    cc = 1'b0; rr = 1'b0;
end



initial 
begin
    #15
    rr = 1;
    #30
    rr = 0;
end

always cc = #25 ~ cc;

endmodule
