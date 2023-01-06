module SHIFT(a, b, RIGHT, LEFT);
	input	[3:0]	 a, b;
	output	[3:0]	RIGHT, LEFT;
	reg		[3:0]	c, d, RIGHT, LEFT;
	
	always@(*)
	begin
		c = 4'b0001 + a;
		d = 4'b1000 + b;
		RIGHT <= c >> 2;
		LEFT <= d << 3;
	end
	//assign RIGHT	 = a >>2;
	//assign LEFT 	 = b << 3;
endmodule
