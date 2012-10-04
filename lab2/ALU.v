`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:07:11 10/03/2012 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [2:0] opcodein,
    input [2:0] a,
    input [2:0] b,
	 input execute,
    output [5:0] f
	 
    );

	parameter ADD = 001;
	parameter SUB = 010;
	parameter MUL = 011;
	parameter SHR = 100;
	parameter SHL = 101;
	parameter XNOR = 110;
	parameter SGT = 111;
	parameter NOTHING = 000;
	
	always@(posedge excute)begin
		case(opcodein)
			ADD: f=a+b;
			SUB: f=a-b;
			MUL: f=a*b;
			SHR: f=a>>b;
			SHL: f=a<<b;
			XNOR: f=a~^b;
			SGT: begin if(a>b)f=1;else f=0;end
			NOTHING: f=0;
			default: f=0;
		endcase
	end
	
	




endmodule
