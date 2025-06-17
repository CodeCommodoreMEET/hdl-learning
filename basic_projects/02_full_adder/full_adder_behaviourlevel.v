module full_adder_behaviourlevel(input x,y,z, output sum,carry);

assign sum = x^y^z;
assign carry = (x&y) | (y&z) | (x&z);


endmodule