`timescale 1ns/1ns

module testbench;
reg i0,i1;
wire a_g_b,a_e_b,b_g_a;
integer i;
Data_Comparator_1_Bit_behav behav(i0,i1,a_g_b,a_e_b,b_g_a);
    initial begin

$dumpfile("1_Bit_Data_Comparator.vcd");
$dumpvars(0,testbench);

    $display("i1 i0 | a> b | a==b | b> a");
    $display("-----------------------------");
for(i=0;i<4;i=i+1)
begin
    {i1,i0}=i[1:0];
    #10;
 $display(" %b  %b |   %b   |   %b   |   %b", i1, i0, a_g_b, a_e_b, b_g_a);
end
        $finish;
    end


endmodule