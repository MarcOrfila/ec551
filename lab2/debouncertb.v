`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:41:41 10/14/2012
// Design Name:   debounce
// Module Name:   /home/hpw/Documents/EC551/lab2/debouncertb.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: debounce
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module debouncertb;

	// Inputs
	reg reset_n;
	reg clk;
	reg noisy;

	// Outputs
	wire clean;

	// Instantiate the Unit Under Test (UUT)
	debounce uut (
		.reset_n(reset_n), 
		.clk(clk), 
		.noisy(noisy), 
		.clean(clean)
	);

	initial begin
		// Initialize Inputs
		reset_n = 0;
		clk = 0;
		noisy = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	reset_n=1;
	end
      
		always #1 clk=~clk;
		always begin 
				#100;
				#30 noisy=1;
				#50 noisy=0;
				#30 noisy=1;
				#50 noisy=0;
				#30 noisy=1;
				#50 noisy=0;
				#30 noisy=1;
				#50 noisy=0;
				#30 noisy=1;
				#50 noisy=0;
				#30 noisy=1;
				#50 noisy=0;
				#30 noisy=1;
				#50 noisy=0;
				#30 noisy=1;
				#50 noisy=0;
				#30 noisy=1;
				#50 noisy=0;
				#30 noisy=1;
				#50 noisy=0;
				#30 noisy=1;
				#50 noisy=0;
				#30 noisy=1;
				#50 noisy=0;
				#30 noisy=1;
				#1000 noisy=0;
				#30 noisy=1;
				#50 noisy=0;
			
			#2000;
		end
		
		
endmodule

