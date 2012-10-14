`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:49:01 10/13/2012
// Design Name:   topmodule
// Module Name:   /home/hpw/Documents/EC551/LAB2/lab2/toptb.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: topmodule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module toptb;

	// Inputs
	reg [2:0] A;
	reg [2:0] B;
	reg [2:0] opcodein;
	reg execute;
	reg clk;
	reg reset_n;
	reg read;
	// Outputs
	wire [7:0] display;
	wire [3:0] displayctl;
	
	wire [5:0] resulttbLIFOLED,Ftb;
	wire [2:0] opcodetbALULIFO;
	wire [2:0] opcodetbLIFOLED;
	//wire clk_300hztb;
	
	// Instantiate the Unit Under Test (UUT)
	topmodule uut (
		.A(A), 
		.B(B), 
		.opcodein(opcodein), 
		.execute(execute), 
		.clk(clk), 
		.reset_n(reset_n), 
		.display(display), 
		.displayctl(displayctl)
		,.read(read)
		
		,.Ftb(Ftb)
		,.resulttbLIFOLED(resulttbLIFOLED)
		,.opcodetbALULIFO(opcodetbALULIFO)
		,.opcodetbLIFOLED(opcodetbLIFOLED)
		//,.clk_300hztb(clk_300hztb)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		opcodein = 0;
		execute = 0;
		clk = 0;
		reset_n = 0;
		read=0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		reset_n=1;
	end
	
		initial begin
		forever begin
		#5;
			execute=1;
		#5;
			execute=0;
			#58;
		end
	
	end
   
initial begin
read=0;
#100;
forever begin
		#5;
			read=1;
		#5;
			read=0;
			#79;
		end
end

      always #4 clk=~clk;
		always #30 A=A+1;
		always #60 B=B+1;
		always #120 opcodein=opcodein+1;
		
		
endmodule

