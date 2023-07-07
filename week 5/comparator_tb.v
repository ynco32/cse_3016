`timescale 1ns / 1ps



module comparator_tb;

reg aa;
reg bb;
wire cc;
wire dd;
wire ee;
wire ff;

comparator u_comparator (
.inputA (aa ),
.inputB (bb ),
.outputC (cc ),
.outputD (dd ),
.outputE (ee ),
.outputF (ff ) );

initial aa = 1'b0;
initial bb = 1'b0;


always aa = #250 ~aa;
always bb = #500 ~bb;



initial begin
    #1000
    $finish;
end

endmodule

