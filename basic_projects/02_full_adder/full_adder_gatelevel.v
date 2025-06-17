module full_adder_gatelevel(input x,y,z, output sum,carry);
wire w1,w2,w3;
//summation
xor g1(w1,x,y),
    g2(sum,z,w1);
//for carry
and g3(w2,x,y),
    g4(w3,z,w1);
//to get final carry
or g5(carry,w2,w3);
endmodule
