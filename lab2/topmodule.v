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
	 input writein,
	 input readin,
	 input clk,
	 input reset_n,
	 input flag_reset,
	 input read_flag_reset,
    output [7:0] display,
	 output [3:0] displayctl,
	 output full,
	 output empty,
	 output flag,
	 output readflag
	 
    );
	reg [2:0] opcodein,B;
	wire [2:0] opcodeDECODERALU,opcodeselALULIFO,opcodeselLIFOLED;
	wire clk_300hz;
	wire [5:0] F;
	wire [5:0] resultLIFOLED;
	wire write,read;
	

// input B and opcode	
	always@(posedge clk_300hz or negedge reset_n)begin
		
		if(!reset_n)begin
			opcodein<=0;B<=0;
		end else if(mode)
			opcodein<=Bopcode;
		else B<=Bopcode;
	end
			
		
	clkdiv clkdiv1(
		.clk(clk),
		.reset_n(reset_n),
		.clk_300hz(clk_300hz)
		);
	
	
	
	debounce writedebouncer(
	.clk(clk_300hz),
	.reset_n(reset_n),
	.noisy(writein),
	.clean(write)
		);
		
	debounce readdebouncer(
	.clk(clk_300hz),
	.reset_n(reset_n),
	.noisy(readin),
	.clean(read)
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
		
		.f(F),
		.opcodesel(opcodeselALULIFO)
		);

/*
	lifoph lifo1(
	  .reset_n(reset_n),
     .push(write),
     .pop(read),
	  .clk(clk_300hz),
	  .flag_reset(flag_reset),
	  .read_flag_reset(read_flag_reset),
	  .flag(flag),
	  .readflag(readflag),
	  .opcodeselin(opcodeselALULIFO),
     .resultin(F),
	  .resulttos(resultLIFOLED),
	  .opcodeseltos(opcodeselLIFOLED),
     .full(full),
     .empty(empty)
	);
*/
///*
 lifo lifo2(
     .clk(clk_300hz),
    .data(F),
	 .opcodedata(opcodeselALULIFO),
    .data_out(resultLIFOLED),
	 .opcodedata_out(opcodeselLIFOLED),
    .reset(reset_n),
	 .pop(read),
	 .flag_reset(flag_reset),
	 .flag(flag),
	 .read_flag_reset(read_flag_reset),
	 .readflag(readflag),
	 .calculate(write),
    .full(full),
    .empty(empty)
    );
//*/




	display LED(	
		.result(resultLIFOLED),
		.opcodesel(opcodeselLIFOLED),
		.reset_n(reset_n),
		.clk_in(clk_300hz),
		
		.ctl(displayctl),
		.segments(display)
		);
endmodule
