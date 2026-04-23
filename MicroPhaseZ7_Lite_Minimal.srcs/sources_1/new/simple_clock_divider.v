`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2026 02:15:47 PM
// Design Name: 
// Module Name: simple_clock_divider
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


module simple_clock_divider #(
        parameter CLOCK_DIVISION = 1
    ) (
        input wire clock_in,
        output reg clock_out
    );
    
    reg [$clog2(CLOCK_DIVISION)-1:0] counter;
    initial clock_out = 0;
    initial counter = 0;
    
    always @(posedge clock_in) begin
        /* Divide the input clock down by a bit */
        if (counter < CLOCK_DIVISION) begin
            counter <= counter + 1;
        end else begin
            clock_out <= !clock_out;
            counter <= 0;
        end
    end
endmodule
