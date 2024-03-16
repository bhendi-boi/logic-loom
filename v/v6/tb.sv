module tb();
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
  bit clock;
  bit rd,wr,rst;
  wire empty,full;
  wire[31:0] fifo_cnt;
  bit [7:0] qInp;
  wire [7:0] qOut;
  always begin #10; clock = ~clock; end
  fifo myqu(clock,rd,wr,rst,empty,full,fifo_cnt, qInp, qOut);
  
endmodule