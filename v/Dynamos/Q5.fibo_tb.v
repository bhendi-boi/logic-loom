module fibo_tb();
  reg n;
  wire [n:0]ans;
  
  fibo_tb DUT(n,ans);
    
  initial
   begin
     $dumpfile("dump.vcd");
     $dumpvars(1);
     $monitor($time," N : %d , ANS : %d",n,ans);
     
     #5 n=5;
     #5 $finish();
     
   end
endmodule