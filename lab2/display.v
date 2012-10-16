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
	 output [3:0] ctl,
    output [7:0] segments //segments[0] is the point
	 , input [2:0] opcodesel
    );

	reg [3:0] highdigit;
	reg [3:0] lowdigit;
	reg [3:0] currentdigit;
	reg [3:0] sign;
	reg [5:0] absresult;
	
	reg [2:0] tempctl;
	reg [6:0] tempsegments;
	reg [1:0]counter;
	
	
	assign ctl[3]=0;	 //ground
	assign ctl[0]=tempctl[0];
	assign ctl[1]=tempctl[1];
	assign ctl[2]=tempctl[2];
	
	assign segments[7:1]=tempsegments;
	assign segments[0]=1;
	
	
	always@(posedge clk_in or negedge reset_n) begin  //divide the period
			if(~reset_n)counter=0;
			else begin
				if(counter==2)counter=0;
				else counter=counter+1;
			end
	end
	
	always@(counter,opcodesel,result,lowdigit,highdigit) begin // assign the period to the 3 LEDs
		case(counter) 
		0: 
		begin
		tempctl[1]=0;tempctl[2]=0;tempctl[0]=1;
		currentdigit=(opcodesel==3'b110)?{3'b000,result[0]}:lowdigit;
		end
		
		1: 
		begin
		tempctl[0]=0;tempctl[2]=0;tempctl[1]=1;
		currentdigit=(opcodesel==3'b110)?{3'b000,result[1]}:highdigit;
		end
		
		2:
		begin
		tempctl[0]=0;tempctl[1]=0;tempctl[2]=1;
		currentdigit=(opcodesel==3'b110)?{3'b000,result[2]}:sign;
		end
		default:
		begin
		tempctl[0]=0;tempctl[1]=0;tempctl[2]=0;
		currentdigit=10;
		end
		endcase
	end
	
	always@(posedge clk_in or negedge reset_n) begin
		if(~reset_n) begin
			sign=10;
		end
		else begin
		if(result[5]==0)sign=10;
		else sign=11;
		end
	end

	always@(posedge clk_in) begin
		begin
			if(result[5]==1)absresult=-result;else absresult=result;
			highdigit=absresult/10;
			if(highdigit==0)highdigit=10;else highdigit=highdigit;
			lowdigit=absresult%10;
		end
	end


	always@(currentdigit) begin //decode
		case(currentdigit)
			0: tempsegments=7'b0000001;
			1: tempsegments=7'b1001111;
			2: tempsegments=7'b0010010;
			3: tempsegments=7'b0000110;
			4: tempsegments=7'b1001100;
			5: tempsegments=7'b0100100;
			6: tempsegments=7'b0100000;
			7: tempsegments=7'b0001111;
			8: tempsegments=7'b0000000;
			9: tempsegments=7'b0000100;
			10:tempsegments=1111111;
			11:tempsegments=7'b1111110;
			default: tempsegments=7'b0110000;//error
		endcase
	end
endmodule
