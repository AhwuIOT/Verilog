module half_adder_gate(a, b, c, s);
	input a, b;
	output c, s;
	
	xor SUM (s, a, b);
	and CARRY (c, a, b);
endmodule