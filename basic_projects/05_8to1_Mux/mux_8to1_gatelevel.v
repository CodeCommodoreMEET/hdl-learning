module mux_8to1_gatelevel (input i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,E, output w0,w1,w2,w3,w4,w5,w6,w7,w8,Y);

wire s0_not,s1_not,s2_not;
not g0 (s0_not,s0);
not    g1 (s1_not,s1);
not    g2 (s2_not,s2);
and g3 (w0,s0_not,s1_not,s2_not,i0);
and    g4 (w1,s0_not,s1_not,s2,i1);
and    g5 (w2,s0_not,s1,s2_not,i2);
and    g6 (w3,s0_not,s1,s2,i3);
and    g7 (w4,s0,s1_not,s2_not,i4);
and    g8 (w5,s0,s1_not,s2,i5);
and    g9 (w6,s0,s1,s2_not,i6);
and    g10 (w7,s0,s1,s2,i7);
or  g11 (w8,w0,w1,w2,w3,w4,w5,w6,w7);
and g12 (Y,E,w8);
endmodule