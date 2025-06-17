`timescale 1ns/1ns

module testbench;
reg i0,i1,s,E;
wire w1_gate,w2_gate,w3_gate,Y_gate,w1_behav,w2_behav,w3_behav,Y_behav;
integer i;

mux_2to1_gatelevel gate(.i0(i0),.i1(i1),.s(s),.E(E),.Y(Y_gate),.w1(w1_gate),.w2(w2_gate),.w3(w3_gate));
mux_2to1_behavioural behav(.i0(i0),.i1(i1),.s(s),.E(E),.Y(Y_behav),.w1(w1_behav),.w2(w2_behav),.w3(w3_behav));
initial begin 
    $dumpfile("mux_2to1.vcd");
    $dumpvars(0,testbench);
    //Here I was trying to use if-else but for assigning some value to e we need to give or initalize e first so instead use case like I did
    E=0;
    i0=1'bx;
    i1=1'bx;
    s=1'bx;
    $display("E is 0-> Forcing unknown inputs, Output Y should be 0.");
    #10;

E=1;

for (i=0;i<8;i=i+1)
begin
{i0,i1,s} = i[2:0];
#10;
$display("E=%b,i0=%b,i1=%b,s=%b,Y_gate=%b,Y_behav=%b", E,i0,i1,s,Y_gate,Y_behav);

end

 $finish;
end 

endmodule