`timescale 1ns/1ps

module testbench;
reg i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,E;
wire w0_gate,w1_gate,w2_gate,w3_gate,w4_gate,w5_gate,w6_gate,w7_gate,w8_gate,Y_gate,Y_behav;

mux_8to1_behavioural behav(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,E,Y_behav);
mux_8to1_gatelevel gate(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,E,w0_gate,w1_gate,w2_gate,w3_gate,w4_gate,w5_gate,w6_gate,w7_gate,w8_gate,Y_gate);

integer i;

initial begin 
$dumpfile("mux_8to1.vcd");
$dumpvars(0,testbench);
//Case-1 when enable is 0;
E=0;
s0 = 1'bx;
s1 = 1'bx;
s2 = 1'bx;
i0 = 0; i1 = 0; i2 = 0; i3 = 0;
i4 = 0; i5 = 0; i6 = 0; i7 = 0;
#10
$display("When E=0 the Y_gate=%b and Y_behav=%b", Y_gate,Y_behav);
E=1;
for(i=0;i<2048;i=i+1)
begin 
{i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2}=i[10:0];
#10
$display("i0=%b,i1=%b,i2=%b,i3=%b,i4=%b,i5=%b,i6=%b,i7=%b,s0=%b,s1=%b,s2=%b,E=%b,Y_gate=%b,Y_behav=%b",i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,E,Y_gate,Y_gate);
end
$finish;
end






endmodule