`timescale 1ns/1ns

module testbench;
reg i3,i2,i1,i0;
wire y1,y0;
integer i;
encoder_4to2_behav behav(i3,i2,i1,i0,y1,y0);
initial begin
 $dumpfile("Encoder_4to2.vcd");
 $dumpvars(0,testbench);   

for(i=0;i<16;i=i+1)
begin
 {i3,i2,i1,i0}=i[3:0];
 #1;
 $display("i3=%b,i2=%b,i1=%b,i0=%b,y1=%b,y0=%b",i3,i2,i1,i0,y1,y0);
 #10;


end
$finish;
end



endmodule