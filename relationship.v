module relationship(a, b, LARGE, SMALL, LARGE_EQV, SMALL_EQV);
	input	[3:0]a,b;
	output	LARGE, SMALL, LARGE_EQV, SMALL_EQV;
	
	assign LARGE = (a > b);
	assign SMALL = (a < b);
	assign LARGE_EQV = (a >= b);
	assign SMALL_EQV = (a <= b);

endmodule