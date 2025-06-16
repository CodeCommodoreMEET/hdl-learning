module half_adder_behavioural(input x,y, output sum,carry);


assign sum = x^y;
assign carry = x & y;
endmodule