module mux_4to1_behavioural(input i0,i1,i2,i3,s0,s1,E, output reg Y);// Output must be reg because it's driven inside an always block adn wire cannot store any value

always@(*)begin
if(E==0)
Y=0;
else begin
case({s0,s1})
  2'b00: Y = i0;
  2'b01: Y = i1;
  2'b10: Y = i2;
  2'b11: Y = i3;
default: Y = 0;
endcase
 end
end
endmodule

