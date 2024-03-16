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
    input [3:0] din,
    input load,shift,clk,
    output reg out
    );
    
    reg [3:0] temp;
    initial assign temp = din;
    
    always@(posedge clk) begin
        if (load==0 && shift==0)
            out <= out;
        else if (load==1 && shift==0)
            out <= temp[3];
        else if (load==0 && shift==1) begin
            temp[3] <= temp[2];
            temp[2] <= temp[1];
            temp[1] <= temp[0];
            temp[0] <= 0;
        end
        else if (load==1 && shift==1)begin
            out <= 0;
            temp <= 4'b0000;
        end
            
            
    end
    
    
    
    
endmodule
