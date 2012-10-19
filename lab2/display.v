`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:56:40 10/03/2012 
// Design Name: 
// Module Name:    display 
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
module display(
    input [5:0] result,
	 input clk_in,
	 input reset_n,
	 input [2:0] opcodesel,//if opcodesel is not 110(xnor) it displays decimal, else binary
	 output reg [3:0] ctl,
    output reg [7:0] segments //segments[0] is the point
	 
    );

	reg [3:0] highdigit;
	reg [3:0] lowdigit;
	reg [3:0] sign;
	
	reg [3:0] currentdigit;
	reg [5:0] absresult;
	
	
	reg [1:0]counter;
	
	
	
	
	always@(posedge clk_in or negedge reset_n) begin  //divide the period
			if(~reset_n)counter<=2'b00;
			else begin
				if(counter==2)counter<=2'b00;
				else counter<=counter+1'b1;
			end
	end
	
always@(reset_n,counter,opcodesel,result,lowdigit,highdigit,sign) begin // assign the period to the 3 LEDs
	if(!reset_n)begin				absresult=0;highdigit=0;lowdigit=0;currentdigit=0;ctl[3:0]=4'b0000;end
	else	begin
			if(result[5]==1)		absresult[5:0]=-result[5:0];
			else 						absresult[5:0]=result[5:0];
			
		highdigit=(absresult/10==0)?10:absresult/10;			
		lowdigit=absresult%10;
	
		ctl[3]=1'b0;
		
		case(counter) 
		0: 
		begin
		ctl[1]=0;ctl[2]=0;ctl[0]=1;
		currentdigit=(opcodesel==3'b110)?{3'b000,result[0]}:lowdigit;
		end
		
		1: 
		begin
		ctl[0]=0;ctl[2]=0;ctl[1]=1;
		currentdigit=(opcodesel==3'b110)?{3'b000,result[1]}:highdigit;
		end
		
		2:
		begin
		ctl[0]=0;ctl[1]=0;ctl[2]=1;
		currentdigit=(opcodesel==3'b110)?{3'b000,result[2]}:sign;
		end
		3:
		begin
		ctl[0]=0;ctl[1]=0;ctl[2]=0;
		currentdigit=10;
		end

		default:
		begin
		ctl[0]=0;ctl[1]=0;ctl[2]=0;
		currentdigit=10;
		end
		endcase
	end
end	
	always@(result,reset_n) begin
		if(!reset_n) 					sign=10;
		else 
		if(result[5]==0)				sign=10;
		else 								sign=11;
		
	end



	always@(currentdigit) begin //decode
		case(currentdigit)
			0: segments=8'b00000011;
			1: segments=8'b10011111;
			2: segments=8'b00100101;
			3: segments=8'b00001101;
			4: segments=8'b10011001;
			5: segments=8'b01001001;
			6: segments=8'b01000001;
			7: segments=8'b00011111;
			8: segments=8'b00000001;
			9: segments=8'b00001001;
			10:segments=8'b11111111;
			11:segments=8'b11111101;
			default: segments=8'b01100001;//error
		endcase
	end
endmodule
