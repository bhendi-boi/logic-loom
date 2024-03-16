`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 10:49:24
// Design Name: 
// Module Name: logic_loom_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module logic_loom_tb();
    reg n;
    reg clk,reset;
    wire out;
    
    logic_loom l(n,clk,reset,out);
    
    always #5 clk=~clk;
    
    initial begin
        reset=1;
        clk=0;
        @(posedge clk);
        reset=0;
        n = 1;
        @(posedge clk);
        n = 0;
        @(posedge clk);
        n = 1;
        @(posedge clk);
        n = 1;
        @(posedge clk);
        n = 0;
        @(posedge clk);
        n = 1;
        @(posedge clk);
        n = 1;
        
    end
endmodule
