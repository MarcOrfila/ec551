module lifo
  #(
    parameter depth = 6,
    parameter resultwidth = 6,
	 parameter opcodewidth = 3
    )
  (
   input clk,
   input reset_n,
   output reg empty,
   output reg full,
   input push,
   input [resultwidth-1:0] resultin,
	input [opcodewidth-1:0] opcodeselin,
   input pop,
   output  [resultwidth-1:0] resulttos,//top of stack
	output  [opcodewidth-1:0] opcodeseltos
   );
	
	 reg [2:0] count;
	 wire writing = push && (count < depth || pop);
	 wire reading = pop && count > 0;
	 reg [2:0] next_count;
	 wire [2:0] ptr = writing ? count [2:0] : (count [2:0])-1;
	 
 always @(*)
    if (!reset_n)   							next_count = 0;
    else if (writing && !reading)      next_count = count+1;
    else if (reading && !writing)      next_count = count-1;
    else									      next_count = count;

  always @(posedge clk)
    count <= next_count;
	 
  always @(posedge clk)begin
    full <= next_count == depth;
    empty <= next_count == 0;
  end
  
  reg [resultwidth-1:0] Rmem [depth-1:0];
  reg [opcodewidth-1:0] Omem [depth-1:0];

  always @(posedge clk)
   if (writing && !reading)begin      Rmem[ptr] <= resulttos;		Omem[ptr] <= opcodeseltos;end
	
	
	reg [resultwidth-1:0] Rmem_rd;
	reg [opcodewidth-1:0] Omem_rd;
	
	always @(posedge clk)
    if (reading) begin  Rmem_rd <= Rmem[ptr];Omem_rd <= Omem[ptr];end

	reg [resultwidth-1:0] resulttos_shadow;
	reg [opcodewidth-1:0] opcodeseltos_shadow;
	
  always @(posedge clk)
    if (writing)begin	resulttos_shadow<=resultin;opcodeseltos_shadow <= opcodeselin;	 end
	 
  reg use_mem_read;
  
  
  always @(posedge clk)
    if (!reset_n)      use_mem_read <= 0;
    else if (writing)  use_mem_read <= 0;
    else if (reading)  use_mem_read <= 1;

  assign resulttos = use_mem_read ? Rmem_rd : resulttos_shadow;
  assign opcodeseltos = use_mem_read ? Omem_rd : opcodeseltos_shadow;

endmodule