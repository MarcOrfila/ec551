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
    input [2:0] Bopcode,
    input mode,				//mode 1:input from Bopcode goes to B. mode 2: input from Bcode goes to opcode. 
	 input executein,
	 input readin,
	 input clk,
	 input reset_n,
    output [7:0] display,
	 output [3:0] displayctl	
    );
	reg [2:0] opcodein,B;
	wire [2:0] opcodeDECODERALU,opcodeselALULIFO,opcodeselLIFOLED;
	wire clk_300hz;
	wire [5:0] F;
	wire write;
	wire [5:0] resultLIFOLED;
	wire execute,read;
	/*
	assign resulttbLIFOLED=resultLIFOLED;
	assign opcodetbLIFOLED=opcodeselLIFOLED;
	assign opcodetbALULIFO=opcodeselALULIFO;
	assign FtbALULIFO=F;
*/

// input B and opcode	
	always@(posedge clk_300hz or negedge reset_n)begin
		
		if(!reset_n)begin
			opcodein<=0;B<=0;
		end else if(mode)
			opcodein<=Bopcode;
		else B<=Bopcode;
	end
			
	
	
	
	debounce executedebouncer(
	.clk(clk),
	.reset_n(reset_n),
	.noisy(executein),
	.clean(execute)
		);
/*		
	debounce readdebouncer(
	.clk(clk),
	.reset_n(reset_n),
	.noisy(readin),
	.clean(read)
		);
	*/	
	clkdiv clkdiv1(
		.clk(clk),
		.reset_n(reset_n),
		.clk_300hz(clk_300hz)
		);
// begins

	decoder decoder1(
		.opcodein(opcodein),
		.opcodeout(opcodeDECODERALU)
		);
		
	ALU alu1(
		.opcodein(opcodeDECODERALU),
		.a(A),
		.b(B),
		.execute(execute),
		.f(F),
		.opcodesel(opcodeselALULIFO),
		.write(write)
		);

/*
	lifo6_9 lifo(
	  .reset_n(reset_n),
     .write(write),
     .read(read),
     .F(F),
	  .opcodeselin(opcodeselALULIFO),
	  .clk(clk),
     .result(resultLIFOLED),
	  .opcodeselout(opcodeselLIFOLED),
     .full(),
     .empty(),	
	);
*/
	display LED(
		
		.result(F),
		.opcodesel(opcodeselALULIFO),
		.reset_n(reset_n),
		.clk_in(clk_300hz),
		
		.ctl(displayctl),
		.segments(display)
		);
endmodule
