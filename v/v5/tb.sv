// Code your testbench here
// or browse Examples
// Va
module tb();
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #500;
    $finish;
  end
  bit [31:0] val; // This value updates to next number of fibonacci series on every posedge of lclock;
  bit clock;
  always begin #5 clock = ~clock; end
  fib fibber(clock,val);
  
endmodule