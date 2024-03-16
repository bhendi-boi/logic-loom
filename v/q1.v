`timescale 1ns / 1ps
module q1(din,load,shift,clk,out);
input [3:0]din;
input load,shift,clk;
reg[3:0]q;
output reg out;
always@(posedge clk)begin
if(load==1'b1&&shift==1'b0)begin
q=din;
out=q[3];
end
else if(load==1'b0&shift==1'b1)begin
q[3]=q[2];
q[2]=q[1];
q[1]<=q[0];
q[0]<=din[0];
out=q[3];
end
else if(load==1'b1&&shift==1'b1)begin
q=4'b0000;
out=1'b0;
end
end
endmodule
