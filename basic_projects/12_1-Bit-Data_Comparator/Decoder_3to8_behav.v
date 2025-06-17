module Decoder_3to8_behav(input [2:0] i, output reg [7:0] y);



always @(*) begin
    y=8'b00000000;
case(i)

3'b000: y[0]=1;
3'b001: y[1]=1;
3'b010: y[2]=1;
3'b011: y[3]=1;
3'b100: y[4]=1;
3'b101: y[5]=1;
3'b110: y[6]=1;
3'b111: y[7]=1;
default: y=8'bxxxxxxxx;
endcase

end
    
    
  
endmodule