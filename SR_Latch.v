module SR_Latch(s, r, q, qn);
	input	s,r;
	output	q, qn;
	
	wire qin, qnin;
	
	assign  qin = ~(s & qnin);
	assign  qnin = ~(r & qin);
	assign q  = qin;
	assign qn = qnin;
endmodule