module Ripple_Carry_Adder_4_Bit_behavioural(input [3:0] a,input [3:0] b,input cin, output reg [3:0] s,output reg cout);

reg [4:0] temp;

always @(*) begin
    temp=a+b+cin;
    s=temp[3:0];
    cout=temp[4];
end
 endmodule