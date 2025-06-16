module testbench;

reg x,y,z;
wire sum_gate,sum_behav,carry_gate,carry_behav;

integer i;

full_adder_behaviourlevel behav(.x(x),.y(y),.z(z),.sum(sum_behav),.carry(carry_behav));
full_adder_gatelevel gate(.x(x),.y(y),.z(z),.sum(sum_gate),.carry(carry_gate));

initial begin
$dumpfile("Full_adder.vcd");
$dumpvars(0, testbench);

for(i=0;i<8;i=i+1)
begin 
{x,y,z} = i[2:0];

    #5;
end
$finish;
 end

 initial begin 

$monitor($time,"x=%b,y=%b,z%b,sum_behav=%b,carry_behav=%b,sum_gate=%b,carry_gate=%b", x,y,z,sum_behav,carry_behav,sum_gate,carry_gate);

 end
endmodule