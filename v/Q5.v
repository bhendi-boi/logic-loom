`timescale 1ns / 1ps
module Q5(y,clk);
reg [10:0]d=1;
reg [10:0]temp=0;
output reg [10:0]y;
input clk;
always@(posedge clk)begin
d<=d+temp;
temp<=d;
y=d;
end
endmodule
