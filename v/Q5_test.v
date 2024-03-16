`timescale 1ns / 1ps
module Q5_test;
reg clk;
wire [10:0]y;
Q5 dut(y,clk);
initial begin
clk=1'b0;#5;
clk=1'b1;#5;
clk=1'b0;#5;
clk=1'b1;#5;clk=1'b0;#5;
clk=1'b1;#5;clk=1'b0;#5;
clk=1'b1;#5;
clk=1'b0;#5;
clk=1'b1;#5;
clk=1'b0;#5;
clk=1'b1;#5;
clk=1'b0;#5;
clk=1'b1;#5;
clk=1'b0;#5;
clk=1'b1;#5;
$finish;
end
endmodule
