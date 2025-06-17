`timescale 1ns/1ps

module testbench;

    reg i7,i6,i5,i4,i3,i2,i1,i0;
    wire [2:0] y;
    integer i;

Priority_Encoder_8to3_behav behav(i7,i6,i5,i4,i3,i2,i1,i0,y);

    initial begin

$dumpfile("Priority_Encoder_8to3.vcd");
$dumpvars(0,testbench);
for ( i=0 ;i<256;i=i+1 ) begin
    {i7,i6,i5,i4,i3,i2,i1,i0}=i[7:0];
    #10;
    $display("i7=%b,i6=%b,i5=%b,i4=%b,i3=%b,i2=%b,i1=%b,i0=%b,y[2]=%b,y[1]=%b,y[0]=%b",i7,i6,i5,i4,i3,i2,i1,i0,y[2],y[1],y[0]);
end

        $finish;
   end


endmodule