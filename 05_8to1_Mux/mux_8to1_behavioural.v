module mux_8to1_behavioural (input i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,E, output reg Y);
    
always@(*)begin
if(E==0)
Y=0;
else begin 
case ({s2,s1,s0})
3'b000: Y = i0;
3'b001: Y = i1;
3'b010: Y = i2;
3'b011: Y = i3;
3'b100: Y = i4;
3'b101: Y = i5;
3'b110: Y = i6;
3'b111: Y = i7;
default: Y = 0;

endcase
end
end

endmodule