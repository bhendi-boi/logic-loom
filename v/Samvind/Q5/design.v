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
    input n,
    input clk,reset,
    output reg out
    );
    
    parameter A=0, B=1, C=2, D=3, E=4, F=5;
    
    reg [2:0] state, next_state;
    initial state=A;
    
    
    always@(*)begin
        if (state==A)begin
            if (n)
                next_state<=B;
            else
                next_state<=A;
            out<=0;
        end
        else if (state==B)begin
            if(n)
                next_state<=B;
            else
                next_state<=C;
            out<=0;
        end
        else if (state==C)begin
            if(n)
                next_state<=D;
            else
                next_state<=A;
            out<=0;
        end
        else if (state==D)begin
            if(n)
                next_state<=E;
            else
                next_state<=C;
            out<=0;
        end
        else if (state==E)begin
            if(n)
                next_state<=B;
            else
                next_state<=F;
            out<=0;
        end
        else begin
            if (n) begin
                next_state<=B;
                out <= 1;
            end
            else begin
                next_state<=A;
                out <= 0;
            end
        end
    end
    
    always@(posedge clk) begin
        if (reset)
            state <= A;
        else
            state <= next_state;
    end
    
    
    
endmodule
