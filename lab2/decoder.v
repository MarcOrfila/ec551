`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:53:57 10/03/2012 
// Design Name: 
// Module Name:    decoder 
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
module decoder(
    input [2:0] opcodein,
    output [2:0] opcodeout
    );

	always@(opcodein) begin
		case(opcodein)
			011:opcodeout=3'b001;
			010:opcodeout=3'b010;
			001:opcodeout=3'b011;
			110:opcodeout=3'b100;
			101:opcodeout=3'b101;
			111:opcodeout=3'b110;
			100:opcodeout=3'b111;
			default:opcodeout=000;
		endcase
	end
endmodule
