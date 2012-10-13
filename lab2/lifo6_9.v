`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:43:23 10/13/2012 
// Design Name: 
// Module Name:    lifo6_9 
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
module lifo6_9(
    input reset_n,
    input write,
    input read,
    input [5:0] F,
	 input [2:0] opcodeselin,
    output [5:0] result,
	 output [2:0] opcodeselout,
    output reg full,
    output reg empty
    );

	reg [8:0] Fdata [5:0];
	reg top;//top pointer
	
	
	always@(reset_n, write, read)begin
		if(!reset_n)begin
			Fdata[5:0]=0;
			full=0;
			empty=1;
			
	
endmodule
