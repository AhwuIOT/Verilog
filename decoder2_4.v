module decoder2_4(in1, in2, out);
	input	in1, in2;
	output	[3:0]out;
	
	assign out[0] = ~in1 & ~in2;
	assign out[1] = ~in1 & in2;
	assign out[2] = in1 & ~in2;
	assign out[3] = in1 & in2;
endmodule
