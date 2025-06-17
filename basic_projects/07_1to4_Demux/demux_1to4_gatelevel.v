module  demux_1to4_gatelevel(input i,s0,s1,e, output y0,y1,y2,y3);

wire s0_not,s1_not;

not g0(s0_not,s0);
not g1(s1_not,s1);

and g2(y0,i,e,s0_not,s1_not);
and g3(y1,i,e,s0_not,s1);
and g4(y2,i,e,s0,s1_not);
and g5(y3,i,e,s0,s1);

endmodule