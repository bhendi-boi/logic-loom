`timescale 1ns/1ps
module Q4_TEST;
wire [5:0]hr;//011000
wire [6:0]min;//00111100
wire [6:0]sec;
reg reset,clk;
Q4 dut(hr,min,sec,reset,clk);
initial begin
reset=1'b1;clk=1'b0;#5;
reset=1'b1;#5;
reset=1'b0;#5;
end
always #5clk=~clk;
endmodule
