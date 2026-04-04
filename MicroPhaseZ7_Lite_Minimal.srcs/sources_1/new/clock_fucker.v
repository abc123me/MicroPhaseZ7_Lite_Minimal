`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2026 10:18:47 PM
// Design Name: 
// Module Name: clock_fucker
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


module clock_fucker(
    input  wire pixel_clk,
    input  wire axi_clock,
    output reg  axi_tready
    );
    
    reg oneshot;
    
    initial oneshot = 1;
    initial axi_tready = 0;
    
    always @(posedge axi_clock) begin
        if (pixel_clk) begin
            if (oneshot) begin
                axi_tready <= 1;
                oneshot <= 0;
            end else begin
                axi_tready <= 0;
            end
        end else begin
            axi_tready <= 0;
            oneshot <= 1;
        end
    end
endmodule
