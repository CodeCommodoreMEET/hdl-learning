module mux_4to1_gatelevel(input i0,i1,i2,i3,s0,s1,E, output Y,w0,w1,w2,w3,w4);

wire s0_not,s1_not;
not g0(s0_not,s0);
not g1(s1_not,s1);
and g2(w0,s0_not,s1_not,i0);
and g3(w1,s0,s1_not,i1);
and g4(w2,s0_not,s1,i2);
and g5(w3,s0,s1,i3);
or  g6(w4,w0,w1,w2,w3);
and g7(Y,w4,E);

endmodule