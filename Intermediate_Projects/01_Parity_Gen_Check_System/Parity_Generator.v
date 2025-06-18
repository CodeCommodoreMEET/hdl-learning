module Parity_Generator(input [2:0] a,
input parity_type,output reg p);

//Take 1 for odd parit; 0 for even parity adn which will be default. 

always @(*) begin

p = a[2] ^ a[1] ^ a[0];//default case as even paroty
if(parity_type == 1)
begin
    p=~p;
end
end



 endmodule