module JK_Flip_Flop (input j,
input k,
input clk,
output wire qbar,
output reg q);
assign qbar=~q;
initial q=0;
always @(posedge clk)
begin

case({j,k})

2'b00: q<=q;
2'b01: q<=0;
2'b10: q<=1;
2'b11: q<=~q;


endcase


end


endmodule