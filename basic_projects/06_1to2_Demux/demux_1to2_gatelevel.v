module demux_1to2_gatelevel (
    input i,e,s, output y0,y1);
wire s_not;
not g0(s_not,s);
and g1(y0,i,e,s_not);
and g2(y1,i,e,s);
endmodule   