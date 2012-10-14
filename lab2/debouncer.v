
///////////////////////////////////////////////////////////////////////////////
//
// Pushbutton Debounce Module 
//
///////////////////////////////////////////////////////////////////////////////


module debounce (reset_n, clk, noisy, clean);
   input reset_n, clk, noisy;
   output clean;

   parameter NDELAY = 50000000;

   reg [25:0] countstill,countpushed;
   reg still, pushed,clean;



   always @(posedge clk or posedge noisy) begin
     if (!reset_n) begin countstill <= 0; countpushed<=0; clean <= 0; still <= 0; pushed<=0;end
	  else begin
			if(noisy==1)begin
				countstill<=0;
				if(still==1)begin
					if(pushed==1)begin
						clean<=1;
						pushed<=0;
					end else begin
						if(countpushed==NDELAY-1)begin
							pushed<=1;
						end else begin
							countpushed<=countpushed+1;
						end
					end
				end else begin
				end
			end else begin
				countpushed<=0;
				pushed<=0;
				clean<=0;
				if(countstill==NDELAY)begin
					still<=1;
				end else begin
					countstill<=countstill+1;
				end
			end
		end
	end
							
endmodule
