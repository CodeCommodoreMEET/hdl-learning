`timescale 1ns/1ns

module testbench;
reg s;
reg r;
reg clk;
wire q;
wire qbar;
integer i;
SR_Flip_Flop behav(.s(s),.r(r),.clk(clk),.q(q),.qbar(qbar));
task pulse_clk;
begin
    #10 clk = 1;
    #10 clk = 0;
end
endtask
initial begin
$dumpfile("SR_Flip_Flop.vcd");
$dumpvars(0,testbench);


clk=0;
s=0;
r=0;

s=0;r=0;pulse_clk();
s=0;r=1;pulse_clk();
s=1;r=0;pulse_clk();
s=1;r=1;pulse_clk();





end

endmodule