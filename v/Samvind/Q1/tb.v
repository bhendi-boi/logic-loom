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
    reg [3:0] din;
    reg load,shift,clk;
    wire out;
    
    logic_loom l(din,load,shift,clk,out);
    
    always #5 clk=~clk;
    initial clk=0;
    initial begin
        din = 4'b1001;
        load=1;
        shift=0;
        @(posedge clk)
        load=0;
        shift=1;
        @(posedge clk)
        load=1;
        shift=0;
        @(posedge clk)
        load=0;
        shift=1;
        @(posedge clk)
        load=0;
        shift=1;
        @(posedge clk)
        load=1;
        shift=0;
        @(posedge clk);
        load=1;
        shift=1;
    end
endmodule
