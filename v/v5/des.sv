// Code your design here
module fib (input logic clok, output bit[31:0] value);
  int start=1;
  int prev = 1;
  int tmp;
	always begin
      @(posedge clok);
      value = start;
      tmp = start + prev;
      prev = start;
      start = tmp;

    end
  
endmodule

