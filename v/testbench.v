`timescale 1ns / 1ps
module testbench;
reg load,shift,clk;
reg [3:0]din=4'b0000;
wire out;
q1 dut(din,load,shift,clk,out);
initial
begin
   clk=1'b0;load=1'b0;shift=1'b0;din=4'b0000;
   #5;load=1'b1;shift=1'b0;din=4'b1010;
   #10;load=1'b0;shift=1'b1;din=4'b1010;
   #5;load=1'b0;shift=1'b0;
   #5;load=1'b0;shift=1'b0;
   #5;load=1'b0;shift=1'b1;
   #5;load=1'b0;shift=1'b1;
   #5;load=1'b1;shift=1'b1;
   #5;load=1'b1;shift=1'b1;
   
   $finish;
end
always #5clk=~clk;
endmodule
