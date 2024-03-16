`timescale 1ns / 1ps
module q2_testbench;
reg [100:0]in;
wire y;
q2 dut(in,y);
initial begin
in=15;#5;
in=12;#5;
$finish;
end
endmodule
