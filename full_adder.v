module full_adder ( input a, input b, input cin,   output sum, output cout );
	wire s1, c1;
    assign s1 = a ^ b;
    assign c1 = a & b;
    assign sum = s1 ^ cin;
    assign cout = ((s1 & cin) ^ c1);

endmodule