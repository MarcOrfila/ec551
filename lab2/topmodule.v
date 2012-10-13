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
	 ,output [5:0] ftb
	 //,output clk_300hztb
	 ,output [2:0] opcodetb
	
    );

	wire [2:0] opcode,opcodesel;
	wire clk_300hz;
	wire [5:0] F;

	assign ftb=F;
	assign opcodetb=opcodesel;
//	assign clk_300hztb=clk_300hz;
//	debouncer debouncer1();
	clkdiv clkdiv1(
		.clk(clk),
		.reset_n(reset_n),
		.clk_300hz(clk_300hz)
		);

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
		,.opcodesel(opcodesel)
		);


	LIFO lifo6_9();

	display LED(
		
		.result(F),
		.reset_n(reset_n),
		.clk_in(clk/*_300hz*/),
		.ctl(displayctl),
		.segments(display)
		,.opcodesel(opcodesel)
		);
endmodule
