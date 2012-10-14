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
    output reg [5:0] result,
	 output reg [2:0] opcodeselout,
    output  full,
    output  empty
	
    );

	reg [5:0] Fmem [5:0];
	reg [2:0] Opmem [5:0];
	reg [2:0]top;//top pointer


	
	assign full=(!reset_n)?0:((top==5)?1:0);
	assign empty=(!reset_n)?1:((top==0)?1:0);
	
	always@(negedge reset_n or posedge write or posedge read)begin
		if(!reset_n)begin
			Fmem[0]<=0;
			Fmem[1]<=0;
			Fmem[2]<=0;
			Fmem[3]<=0;
			Fmem[4]<=0;
			Fmem[5]<=0;
			Opmem[0]<=0;
			Opmem[1]<=0;
			Opmem[2]<=0;
			Opmem[3]<=0;
			Opmem[4]<=0;
			Opmem[5]<=0;
			top<=0;
			end 
		else begin
			if(read)begin
				if(top==0)begin
					
					result<=0;
					opcodeselout<=0;
					end 
				else begin
					result<=Fmem[top];
					opcodeselout<=Opmem[top];
					top<=top-1;
					end 
			end
			else begin
				if(write)begin
					if(top==5)begin
						end 
					else begin
						Fmem[top+1]<=F;
						Opmem[top+1]<=opcodeselin;
						top<=top+1;
						end
				end
				else begin end
			end
			
		end	
	end
endmodule
