module fibo(input n,output reg [n:0]ans);
  integer i;
  reg [n:0]val;
  always@(*) begin
    val[0]<=0&0;
    val[1]<=1&1;
    for(i=2;i<5;i=i+1) begin
      val[i]<=val[i-1]|val[i-2];
    end
    for(i=0;i<5;i=i+1) begin
    	ans[i]<=val[i];
  	end
  end
endmodule