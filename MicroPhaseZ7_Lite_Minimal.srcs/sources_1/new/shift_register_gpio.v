`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2026 02:06:12 PM
// Design Name: 
// Module Name: shift_register_gpio
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


module shift_register_gpio # (
	    parameter REGISTER_COUNT = 1,
        parameter CLOCK_DIVISION = 1
    ) (
        // GPIO and clock inputs
        input  wire [(REGISTER_COUNT*8)-1:0] outputs,
        input  wire axis_clock,
        input  wire axis_aresetn,
        
        // 74HC595 output lines
        output wire driver_clock,
        output wire driver_latch,
        output wire driver_reset,
        output wire driver_data
    );
    
    localparam OUTPUT_BITS = REGISTER_COUNT * 8;
    assign driver_reset = !axis_aresetn;
    
    // Pretty much any PL clock is going to be well above the maximum frequency of a 74HC595, so include a clock divider
    simple_clock_divider # (.CLOCK_DIVISION(CLOCK_DIVISION)) (.clock_in(input_clock), .clock_out(driver_clock));
    
    // Generate the signals
    reg [$clog2(OUTPUT_BITS)-1:0] current_bit;
    initial current_bit = 0;
    assign driver_data = outputs[current_bit];
    assign driver_latch = current_bit >= OUTPUT_BITS;
    always @(negedge driver_clock) begin
        if (driver_reset || current_bit >= OUTPUT_BITS) begin
            current_bit <= 0;
        end else begin
            current_bit <= current_bit + 1;
        end
    end
endmodule
