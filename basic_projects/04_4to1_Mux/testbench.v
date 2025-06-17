`timescale 1ns/1ns

module  testbench;
reg i0,i1,i2,i3,s0,s1,E;
wire Y_behav,w0_behav,w1_behav,w2_behav,w3_behav,w4_behav,Y_gate,w0_gate,w1_gate,w2_gate,w3_gate,w4_gate;
integer i;
mux_4to1_gatelevel gate(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.E(E),.Y(Y_gate),.w0(w0_gate),.w1(w1_gate),.w2(w2_gate),.w3(w3_gate),.w4(w4_gate));


mux_4to1_behavioural behav(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.E(E),.Y(Y_behav));

initial begin 
$dumpfile("mux_4to1.vcd");
$dumpvars(0,testbench);

E=0;
i0=1'bx;
i1=1'bx;
i2=1'bx;
i3=1'bx;
s0=1'bx;
s1=1'bx;
#10;
$display("E=0 -> Y_gate=%b, Y_behav=%b (Expected: 0)", Y_gate, Y_behav);
E=1;
for(i=0;i<64;i=i+1)begin
{i0,i1,i2,i3,s0,s1}=i[5:0];
#10
$display("i0=%b,i1=%b,i2=%b,i3=%b,s0=%b,s1=%b,E=%b,Y_gate=%b,Y_behav=%b",i0,i1,i2,i3,s0,s1,E,Y_gate,Y_behav);
end
$finish;

end 
endmodule