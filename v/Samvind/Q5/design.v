module logic_loom(
    input [7:0] n,
    input clk,
    output reg [7:0] fib0,
    output reg [7:0] fib1,
    output reg [7:0] fib2,
    output reg [7:0] count
    );

    initial begin
        fib0 = 0;
        fib1 = 1;
        count = 0;
       fib2=1;
    end

    always @(posedge clk) begin
        if(count < n) begin
            fib2 = fib0 + fib1;
            fib0 <= fib1;
            fib1 <= fib2;
            count <= count + 1;
        end else begin
            fib0 <= 0;
            fib1 <= 1;
            fib2<=1;
            count <= 0;
        end
    end
endmodule
