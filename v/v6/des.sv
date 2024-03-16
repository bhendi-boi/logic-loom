module fifo(input logic clk, input logic rd, input logic wr, input logic rst, output bit empty, output bit full,output bit[31:0] fifo_cnt, input bit[7:0] qInp, output reg[7:0] qOut );
  bit[7:0][7:0] queue;
  initial begin empty =1; ; end
  always begin
    @(posedge clk);
    
    if (rst ==1) begin 
      queue = 64'h0; 
    end
    else if (rd ==1 && empty == 0 && wr == 0 ) 
      begin qOut = queue<<8; fifo_cnt = fifo_cnt -1; 
        full =0;
      end
    else if( wr == 1 && full == 0 && rd == 0 )
      begin 
        queue = queue<<8; 
        queue[0] = qInp; 
        fifo_cnt = fifo_cnt+1; 
        empty=0;
      end
    
      if (fifo_cnt >=8) begin full =1; end
    if(fifo_cnt<=0)  begin empty=0;end
  end
endmodule