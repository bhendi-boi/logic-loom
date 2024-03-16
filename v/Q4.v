`timescale 1ms / 1fs
module t(input t,input clk,input reset,output reg y);
always@(posedge clk or reset)begin
if(reset==1'b1)begin
y=1;
end
else if(t==1'b1)begin
y=~y;
end
else
begin 
y=y;
end
end
endmodule
module Q4(hr,min,sec,reset,clk);
output reg[5:0]hr;//011000
output reg[6:0]min;//00111100
output reg[6:0]sec;
wire [18:0]d;
input reset;
input clk;
t f1(clk,clk,reset,d[0]);
t f2(1,d[0],reset,d[1]);
t f3(1,d[1],reset,d[2]);
t f4(1,d[2],reset,d[3]);
t f5(1,d[3],reset,d[4]);
t f6(1,d[4],reset,d[5]);
t f7(1,d[5],reset,d[6]);
t f8(1,d[6],reset,d[7]);
t f9(1,d[7],reset,d[8]);
t f10(1,d[8],reset,d[9]);
t f11(1,d[9],reset,d[10]);
t f12(1,d[10],reset,d[11]);
t f13(1,d[11],reset,d[12]);
t f14(1,d[12],reset,d[13]);
t f15(1,d[13],reset,d[14]);
t f16(1,d[14],reset,d[15]);
t f17(1,d[15],reset,d[16]);
always@(*)begin
hr[5:0]=d[18:14];
min[6:0]=d[13:7];
hr[5:0]=d[6:0];
end
endmodule
