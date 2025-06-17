`timescale 1ns/1ns

module testbench;
reg i,s,e;
wire y0_behav,y1_behav,y0_gate,y1_gate;
integer ip;
demux_1to2_behavioural behav(.i(i),.s(s),.e(e),.y0(y0_behav),.y1(y1_behav));
demux_1to2_gatelevel gate(.i(i),.s(s),.e(e),.y0(y0_gate),.y1(y1_gate));
initial begin

$dumpfile("Demux_1to2.vcd");
$dumpvars(0,testbench);

for(ip=0;ip<8;ip=ip+1)
begin
    {e,s,i}=ip[2:0];
    #2
    $display("e=%b,s=%b,i=%b,y0_behav=%b,y1_behav=%b,y0_gate=%b,y1_gate=%b",e,s,i,y0_behav,y1_behav,y0_gate,y1_gate);
    #10;
end

$finish;
end








endmodule