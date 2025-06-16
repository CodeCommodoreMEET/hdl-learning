module mux_2to1_gatelevel(input i0,i1,s,E, output Y,w1,w2,w3);
wire s_not;
not g0 (s_not, s);
and g1 (w1,i0,s_not);
and g2 (w2,i1,s);
or  g4 (w3,w1,w2);
and g3 (Y,w3,E);


endmodule