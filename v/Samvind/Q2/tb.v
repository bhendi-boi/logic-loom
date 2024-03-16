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
    reg [7:0] n;

    
    logic_loom l(n);
    
    initial begin
        n = 8'b00101011;
    end
endmodule
