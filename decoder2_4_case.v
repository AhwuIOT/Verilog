module decoder2_4_case(in1, in2, out);
	input	in1, in2;
	output	reg	[3:0]out;
	
	always@(in1 or in2)
	begin
		case({in2, in1})
			2'b01:	out = {2'b0, 1'b1, 1'b0};
			2'b10:	out = {1'b0, 1'b1, 2'b0};
			2'b11:	out = {1'b1, 3'b0};
			default:out = {3'b0, 1'b1};
		endcase
	end
endmodule