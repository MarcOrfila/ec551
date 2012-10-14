`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:16:41 10/13/2012
// Design Name:   lifo6_9
// Module Name:   /home/hpw/Documents/EC551/lab2/lifotb.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lifo6_9
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module lifotb;

	// Inputs
	reg reset_n;
	reg write;
	reg read;
	reg [5:0] F;
	reg [2:0] opcodeselin;

	// Outputs
	wire [5:0] result;
	wire [2:0] opcodeselout;
	wire full;
	wire empty;
	
//	int counter;
	// Instantiate the Unit Under Test (UUT)
	lifo6_9 uut (
		.reset_n(reset_n), 
		.write(write), 
		.read(read), 
		.F(F), 
		.opcodeselin(opcodeselin), 
		.result(result), 
		.opcodeselout(opcodeselout), 
		.full(full), 
		.empty(empty)
	);

	initial begin
		// Initialize Inputs
		reset_n = 0;
		write = 0;
				F = 0;
		opcodeselin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset_n=1;
	end
	initial begin
		forever begin
		#5;
			write=1;
		#5;
			write=0;
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
		always #10 F=F+1;
		always #20 opcodeselin=opcodeselin+1;
		//always #10 
endmodule

