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
    output reg [5:0] f
	 ,output reg [2:0] opcodesel
	 
    );
	
	parameter ADD = 3'b001;
	parameter SUB = 3'b010;
	parameter MUL = 3'b011;
	parameter SHR = 3'b100;
	parameter SHL = 3'b101;
	parameter XNOR = 3'b110;
	parameter SGT = 3'b111;
	parameter NOTHING = 3'b000;
	
	
	
	always@(a,b,opcodein)begin
		opcodesel=opcodein;
		case(opcodein)
			ADD: f=a+b;
			SUB: f=a-b;
			MUL: f=a*b;
			SHR: f=a>>>b;
			SHL: f=a<<<b;
			XNOR: f=a~^b;
			SGT: begin if(a>b)f=1;else f=0;end
			NOTHING: f=0;
			default: f=0;
		endcase
	end
endmodule
