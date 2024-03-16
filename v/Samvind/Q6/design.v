module fifo (
    input clk,
    input rst,
    input wr,
    input rd,
    input [7:0] data_in,
    output reg [7:0] data_out,
    output reg empty,
    output reg full,
    output reg [7:0] fifo_cnt
);

    parameter DEPTH = 256;  // FIFO depth
    reg [7:0] mem [0:DEPTH-1];  // FIFO memory
    reg [7:0] wr_ptr, rd_ptr;  // Write and read pointers

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            wr_ptr <= 0;
            rd_ptr <= 0;
            fifo_cnt <= 0;
            empty <= 1;
            full <= 0;
        end else begin
            if (wr && !full) begin
                mem[wr_ptr] <= data_in;
                wr_ptr <= wr_ptr + 1;
                fifo_cnt <= fifo_cnt + 1;
            end
            if (rd && !empty) begin
                data_out <= mem[rd_ptr];
                rd_ptr <= rd_ptr + 1;
                fifo_cnt <= fifo_cnt - 1;
            end
            empty <= (fifo_cnt == 0);
            full <= (fifo_cnt == DEPTH);
        end
    end
endmodule
