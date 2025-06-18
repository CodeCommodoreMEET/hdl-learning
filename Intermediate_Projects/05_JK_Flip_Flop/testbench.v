`timescale 1ns/1ns

module testbench;
reg j;
reg k;
reg clk;
wire q;
wire qbar;

JK_Flip_Flop behav(.j(j),.k(k),.clk(clk),.q(q),.qbar(qbar));
task pulse_clk;
begin
    #10 clk = 1;
    #10 clk = 0;
end
endtask
initial begin
$dumpfile("JK_Flip_Flop.vcd");
$dumpvars(0,testbench);
clk=0;
j=0;
k=0;

j=0;k=0;pulse_clk();
j=0;k=1;pulse_clk();
j=1;k=0;pulse_clk();
j=1;k=1;pulse_clk();

end

endmodule











