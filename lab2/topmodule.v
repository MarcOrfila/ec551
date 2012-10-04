`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:50:49 10/03/2012 
// Design Name: 
// Module Name:    topmodule 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module topmodule(
    input [2:0] A,
    input [2:0] B,
    input [2:0] opcodein,
	 input execute,
	 input clk,
	 input reset_n,
    output [7:0] display,
	 output [3:0] displayctl
    );

	wire opcode;
	wire clk100hz;
	reg F;
	
	
//	debouncer debouncer1();
//	clkdiv clkdiv1();

	decoder decoder1(
		.opcodein(opcodein),
		.opcodeout(opcode)
		);
		
	ALU alu1(
		.opcodein(opcode),
		.a(A),
		.b(B),
		.execute(execute),
		.f(F)
		);


//	LIFO lifo1();

	display LED(
		.result(F),
		.reset_n(reset_n),
		.clk_in(clk100hz),
		.ctl(displayctl),
		.segments(display)
		);
endmodule
