module mux_2to1_behavioural(input i0,i1,s,E, output Y,w1,w2,w3);

assign w1 = i0 & ~s;
assign w2 = i1 & s;
assign w3 = w1 | w2;
assign Y = w3 & E;

 endmodule