`timescale 1ns/1ns

module testbench;
reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] s;
wire cout;


Ripple_Carry_Adder_4_Bit_behavioural behav(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));

integer i;
initial begin

$dumpfile("Ripple_Carry_Adder_4_Bit.vcd");
$dumpvars(0,testbench);


for(i=0;i<512;i=i+1)
begin
{a,b,cin}=i[8:0];//here 256 cases becoz a will have 4 bits and b also and 1bit of cin so total 9 so2^9=512
#10;
$display("| a = %b | b = %b | cin = %b | sum = %b | cout = %b |", a, b, cin, s, cout);

end




end


endmodule