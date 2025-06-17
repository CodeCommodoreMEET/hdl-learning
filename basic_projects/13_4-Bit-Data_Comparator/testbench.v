`timescale 1ns/1ns

module testbench;
reg  [3:0] a, b;
wire a_g_b,a_e_b,b_g_a;
integer i;
Data_Comparator_4_Bit_behav behav(a,b,a_g_b,a_e_b,b_g_a);
    initial begin

$dumpfile("Data_Comparator_4_Bit.vcd");
$dumpvars(0,testbench);
$display(" a | b |  a > b  |  a = b  |  a < b  |");
for(i=0;i<256;i=i+1)begin
    {a,b}=i[7:0];
    #10;
    $display(" %b | %b |  %b  |  %b  |  %b  |",  a, b, a_g_b, a_e_b, b_g_a );
end
        $finish;
    end


endmodule