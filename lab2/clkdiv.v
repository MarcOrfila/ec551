`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:52:28 10/04/2012 
// Design Name: 
// Module Name:    clkdiv 
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
module clkdiv(
    input clk,
	 input reset_n,
    output reg clk_300hz
    );

	reg [17:0] counter_300hz;
	
	always@(posedge clk)begin
		if(!reset_n)begin counter_300hz<=0;clk_300hz<=0; end else begin
			counter_300hz<=(counter_300hz==150000)?1'b0:counter_300hz+1'b1;
			clk_300hz<=(counter_300hz==150000)?(~clk_300hz):clk_300hz;
		end
	end

endmodule
