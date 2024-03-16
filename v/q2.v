`timescale 1ns / 1ps
module q2(in,y);
input [100:0]in;
output reg y;
always@(*)
begin
if(in%5==0)begin
y=1'b1;
$display("The number is evenly divisible by 5");
end
else begin
y=1'b0;
$display("The number is notevenly divisible by 5");
end
end
endmodule
