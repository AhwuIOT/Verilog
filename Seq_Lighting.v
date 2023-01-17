module Seq_Lighting(clk, reset, a, b, c, d, e);
	input	clk, reset;
	reg	[31:0]	divider;
	reg 	[2:0]	counter;
	output	reg	a, b, c, d, e;

	
	always@(posedge clk)
	begin	
		if(!reset)begin
			divider <= divider + 1;
			if(divider >= 999999)begin
				divider <= 0;
			end
		end
		else begin
			divider <= 0;
		end
		
		
	end
	always@(posedge clk)
	begin
		if(divider == 999999)begin
			counter <= counter + 1;
		end
		else if(counter > 5)begin
			counter <= 0;
		end
	end
	
	always@(*)
	begin
		case(counter)
			3'b001: {a, b, c, d, e} <= 5'b10000;
			3'b010: {a, b, c, d, e} <= 5'b01000;
			3'b011: {a, b, c, d, e} <= 5'b00100;
			3'b100: {a, b, c, d, e} <= 5'b00010;
			3'b101: {a, b, c, d, e} <= 5'b00001;
			default:{a, b, c, d, e} <= 5'b00000;
		endcase
	end
endmodule
