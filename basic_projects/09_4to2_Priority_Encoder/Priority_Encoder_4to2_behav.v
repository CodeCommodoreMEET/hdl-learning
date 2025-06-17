module Priority_Encoder_4to2_behav(input i0,i1,i2,i3, output reg [1:0] y);

always @(*) begin
    
if (i3) y=2'b11;
else if (i2) y=2'b10;
else if (i1) y=2'b01;
else if (i0) y=2'b00;
else begin

y=2'bxx;

end



end
    
    
  
endmodule