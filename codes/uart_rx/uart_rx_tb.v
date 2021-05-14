`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:50:58 05/11/2021
// Design Name:   uart_rx_code
// Module Name:   F:/CEDT projects/color_mixer_fpga/codes/uart_rx/uart_rx_tb.v
// Project Name:  uart_rx
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: uart_rx_code
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module uart_rx_tb;

	// Inputs
	reg reset;
	reg rx;
	reg clk;

	// Outputs
	wire [7:0] outputdata;

	// Instantiate the Unit Under Test (UUT)
	uart_rx_code uut (
		.reset(reset), 
		.rx(rx), 
		.clk(clk), 
		.outputdata(outputdata)
	);

	initial begin
		// Initialize Inputs
		reset = 1;
		rx = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here
	end
	
	always #50 clk = ~clk;
	
	initial begin
		#200
					rx = 0;
		#833300 	rx = 1;
		#833300	rx = 0;
		#833300	rx = 1;
		#833300	rx = 0;
		#833300	rx = 1;
		#833300	rx = 1;
		#833300	rx = 1;
		#833300	rx = 0;
		#833300	rx = 1;
		#833300
		
		#100
					rx = 0;
		#833300 	rx = 1;
		#833300	rx = 1;
		#833300	rx = 1;
		#833300	rx = 1;
		#833300	rx = 0;
		#833300	rx = 1;
		#833300	rx = 1;
		#833300	rx = 1;
		#833300	rx = 1;

	end
endmodule