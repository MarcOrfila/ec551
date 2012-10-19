`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:55:22 10/03/2012
// Design Name:   display
// Module Name:   /home/hpw/Documents/EC551/LAB2/lab2/displaytb.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: display
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module displaytb;

	// Inputs
	reg [5:0] result;
	reg clk_in;
	reg [2:0]opcodesel;
reg reset;
	// Outputs
	wire [3:0] ctl;
	wire [7:0] segments;

	// Instantiate the Unit Under Test (UUT)
	display uut (
		.result(result), 
		.reset_n(reset),
		.clk_in(clk_in), 
		.ctl(ctl), 
		.segments(segments),
		.opcodesel(opcodesel)
	);

	initial begin
		// Initialize Inputs
		result = -15;
		clk_in = 0;
		reset=0;
		opcodesel=0;
		// Wait 100 ns for global reset to finish
		#100;
        reset=1;
		// Add stimulus here

	end
      
		
		always #4 clk_in=~clk_in;
		always #49 result=result+1;
		always #85 opcodesel=opcodesel+1;
endmodule

