module logical(a, b, c, not_op, and_op, or_op, not_bit_op);
	input	[3:0]a, b, c;
	output	not_op, and_op, or_op;
	output	[3:0]not_bit_op;
	assign not_op = !a; 
	assign and_op = (a > b) && (a < c);
	assign or_op = (a > b) || (a < c);
	assign not_bit_op = ~a;
endmodule