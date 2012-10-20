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
    input push,
    input pop,
	 input clk,
    input [5:0] F,
	 input [2:0] opcodeselin,
    output reg [5:0] result,
	 output reg [2:0] opcodeselout,
    output  full,
    output  empty

    );
	parameter depth = 6;

	reg [depth-1:0] Fmem [depth-1:0];
	reg [depth-1:0] Opmem [depth-1:0];
	reg [2:0]top,next_top;//top pointer
	

  wire writing = push && (top < depth || pop);
  wire reading = pop && top > 0;
  assign full=next_top==depth;
  assign empty=next_top==0;
  
  wire [2:0] ptr = writing ? top [2:0] : (top [2:0])-1'b1;   
  
  always @(*)
    if (!reset_n)					      next_top = 0;
    else if (writing && !reading)   next_top = top+1;
    else if (reading && !writing)   next_top = top-1;
    else								      next_top = next_top;
		
  always @(posedge clk)
    top <= next_top;
	
  always @(posedge clk)begin
    if(writing)begin			Fmem[ptr]<=F; 			Opmem[ptr]<=opcodeselin;	end
	 else	begin					Fmem[ptr]<=Fmem[ptr];Opmem[ptr]<=opcodeselin;	end
  end
   
  always @(posedge clk or negedge reset_n)begin
	if(!reset_n)	 begin	result<=0; 				opcodeselout<=0; 			 end
	else if(reading)begin	result<=Fmem[ptr];	opcodeselout<=Opmem[ptr];end
	else 				 begin	result<=result;	opcodeselout<=opcodeselout;end
  end
endmodule
