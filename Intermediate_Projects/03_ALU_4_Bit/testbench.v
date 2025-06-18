module testbench;
reg [3:0]a;
reg [3:0]b; 
reg [2:0] sel;
wire [3:0] result;
wire carry;
wire zero;
ALU_4_Bit behav (.a(a),.b(b),.sel(sel),.result(result),.carry(carry),.zero(zero));
integer i;

initial begin
    $dumpfile("ALU_4_Bit.vcd");
    $dumpvars(0,testbench);
       $display(" a    |  b    | sel | result | carry | zero ");
    $display("---------------------------------------------");
for (i=0;i<2048;i=i+1 ) begin
    
    {a,b,sel}=i[10:0];
    #5;
$display(" %b | %b |  %b  |  %b   |   %b   |   %b", a, b, sel, result, carry, zero);

end
$finish;
end

endmodule