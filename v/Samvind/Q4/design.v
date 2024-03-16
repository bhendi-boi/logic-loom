module logic_loom(
    input clk,
    output reg [6:0] sec,
    output reg [6:0] min,
    output reg [4:0] hr,
    output min_clk,hr_clk
    );
    
    initial begin
        sec=0;
        min=0;
        hr=0;
    end
    
//    initial assign min_clk = 60*clk;
//    reg hr_clk;
//    initial hr_clk = 60*min_clk;
    reg min_clk, hr_clk;
    always #60 min_clk=~min_clk;
    always #3600 hr_clk=~hr_clk;
    initial min_clk=0;
    initial hr_clk=0;
    
    always@(posedge clk)begin
        sec <= sec + 1;
        $display("sec = %d",sec);
    end
    
    always@(posedge min_clk)begin
        min <= min + 1;
    end
    
    always@(posedge hr_clk)begin
        hr <= hr + 1;
    end
    
    
endmodule
