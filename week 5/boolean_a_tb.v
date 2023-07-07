`timescale 1ns / 1ps



module boolean_a_tb;

reg aa;
reg bb;
reg cc;
wire dd;



boolean_a u_boolean_a (
.inputA (aa ),
.inputB (bb ),
.inputC (cc ),
.outputD (dd ) );

initial aa = 1'b0;
initial bb = 1'b0;
initial cc = 1'b0;

always aa = #125 ~aa;
always bb = #250 ~bb;
always cc = #500 ~cc;

initial begin
    #1000
    $finish;
end

endmodule


