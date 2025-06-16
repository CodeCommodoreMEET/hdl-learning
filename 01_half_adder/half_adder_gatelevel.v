module half_adder_gatelevel(input x,y,output sum,carry);



xor g1 (sum,x,y);
and g2 (carry,x,y);

endmodule