module logic_loom_tb();
    reg clk;
    wire [6:0] sec;
    wire [6:0] min;
    wire [4:0] hr;
    wire min_clk, hr_clk;
    
    logic_loom l(clk,sec,min,hr,min_clk,hr_clk);

    
    always #1 clk=~clk;
    initial clk=0;
endmodule
