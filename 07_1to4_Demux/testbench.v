`timescale 1ns/1ns

module testbench;
reg i,s0,s1,e;
wire y0_gate,y1_gate,y2_gate,y3_gate,y0_behav,y1_behav,y2_behav,y3_behav;
integer ip;
demux_1to4_gatelevel gate(.i(i),.s0(s0),.s1(s1),.e(e),.y0(y0_gate),.y1(y1_gate),.y2(y2_gate),.y3(y3_gate));
demux_1to4_behavioural behav(.i(i),.s0(s0),.s1(s1),.e(e),.y0(y0_behav),.y1(y1_behav),.y2(y2_behav),.y3(y3_behav));
initial begin

$dumpfile("Demux_1to4.vcd");
$dumpvars(0,testbench);

for(ip=0;ip<16;ip=ip+1)begin

{e,s1,s0,i}=ip[3:0];
#10;
$display("e=%b,s1=%b,s0=%b,i=%b,y0_gate=%b,y1_gate=%b,y2_gate=%b,y3_gate=%b,y0_behav=%b,y1_behav=%b,y2_behav=%b,y3_behav=%b",e,s1,s0,i,y0_gate,y1_gate,y2_gate,y3_gate,y0_behav,y1_behav,y2_behav,y3_behav);
end
$finish;
end

endmodule