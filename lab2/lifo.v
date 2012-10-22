`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:56:21 10/22/2012 
// Design Name: 
// Module Name:    lifo 
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
module lifo(
    input clk,
    input [5:0] data,
	 input [2:0] opcodedata,
    output reg [5:0] data_out,
	 output reg [2:0] opcodedata_out,
    input reset,
	 input pop,
	 input flag_reset,
	 input read_flag_reset,
	 input calculate,
    output reg full,
    output reg empty,
	 output reg flag,
	 output reg readflag
    );

reg [5:0] lifo [0:5];
reg [2:0] opcodelifo [0:5];
reg [2:0] pointer;


		
always @ (*)begin
if(!reset)begin empty=1'b1;end
else
begin
	if(pointer == 3'b000) 
	begin
		empty = 1'b1;
	end
	else 
		empty = 1'b0;
end
end

always @ (*)begin
if(!reset)begin full=1'b0;end
else
begin
	if(pointer == 3'b110) 
	begin
		full = 1'b1;
	end
	else 
		full = 1'b0;
end
end	

always @(posedge clk or negedge reset)	
begin
	if (reset == 1'b0)
	begin	
		pointer = 3'b000;
		flag=0;readflag=0;
		lifo[0] = 6'b0000000;
		lifo[1] = 6'b0000000;
		lifo[2] = 6'b0000000;
		lifo[3] = 6'b0000000;
		lifo[4] = 6'b0000000;
		lifo[5] = 6'b0000000;
		opcodelifo[0] = 6'b0000000;
		opcodelifo[1] = 6'b0000000;
		opcodelifo[2] = 6'b0000000;
		opcodelifo[3] = 6'b0000000;
		opcodelifo[4] = 6'b0000000;
		opcodelifo[5] = 6'b0000000;
		
		data_out = 6'b000000;
	end
	else
	begin
		if(calculate == 1'b1 && full != 1'b1 && flag !=1)
		begin 
			lifo[pointer] = data;
			opcodelifo[pointer] = opcodedata;
			pointer = pointer + 1'b1;
			flag=1;
		end
		else if(pop == 1'b1 && empty != 1'b1 && readflag!=1)
		begin
			data_out = lifo[pointer-1];
			opcodedata_out = opcodelifo[pointer-1];
			pointer = pointer - 1'b1;
			readflag=1;
		end
		else if(flag_reset==1)
		begin
		flag=0;
		end
		else if(read_flag_reset==1)
		readflag=0;
		else		
		begin end
	end	
end
endmodule
