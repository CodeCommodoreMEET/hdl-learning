`timescale 1ns/1ps

module testbench;

    reg i0,i1,i2,i3;
    wire [1:0] y;
    integer i;

Priority_Encoder_4to2_behav behav(i0,i1,i2,i3,y);

    initial begin

$dumpfile("Encoder_4to2.vcd");
$dumpvars(0,testbench);


        for(i=0;i<16;i=i+1)
        begin
            {i3,i2,i1,i0}=i[3:0];
            #10;
            $display("i3=%b,i2=%b,i1=%b,i0=%b, y[1]=%b, y[0]=%b",i3,i2,i1,i0, y[1], y[0]);
          
        end
        $finish;
    end


endmodule