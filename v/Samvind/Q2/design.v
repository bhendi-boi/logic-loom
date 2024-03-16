`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 10:43:52
// Design Name: 
// Module Name: logic_loom
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


module logic_loom(
    input [7:0] n
 
    );

    initial begin
        if (n%5==0) begin
            $display("It is evenly divisible by 5");
        end
        else
            $display("It is not evenly divisible by 5");
    end
    
endmodule
