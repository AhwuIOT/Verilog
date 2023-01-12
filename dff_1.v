module dff_1(clk, D, Q);
	input 	clk, D;
	output 	Q;
	
	wire Y, P;
	dff_elem dff1(clk, d, Y);
	dff_elem dff2(~clk, Y, P);
	dff_elem dff3(.c(clk), .d(P), .q(Q));

	
endmodule

module dff_elem(c, d, q);
	input 	c, d;
	output 	 q;
	
	assign q = c ? d : q;
	
endmodule
