`timescale 1ns / 1ps

module tb_logic_loom;
 
    reg [7:0] n;
    reg clk;
    wire [7:0] fib0, fib1, fib2;
    wire [7:0] count;


    logic_loom uut (
        .n(n), 
        .clk(clk), 
        .fib0(fib0), 
        .fib1(fib1), 
        .fib2(fib2), 
        .count(count)
    );

    initial begin
        n = 8'hA;  
        clk = 0;

    
        #100;
        
       
        forever #20 clk = ~clk;
    end
      
    initial begin

        $monitor("At time %d, fib0 = %d, fib1 = %d, fib2 = %d, count = %d", $time, fib0, fib1, fib2, count);
    end
endmodule
