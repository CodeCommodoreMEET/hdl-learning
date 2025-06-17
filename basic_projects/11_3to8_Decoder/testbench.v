`timescale 1ns/1ns

module testbench;
reg [2:0] i;
wire [7:0] y;
integer ip;
Decoder_3to8_behav behav(i,y);
    initial begin

$dumpfile("Decoder_3to8.vcd");
$dumpvars(0,testbench);


        for(ip=0;ip<8;ip=ip+1)
        begin
         
         {i[2],i[1],i[0]}=ip[2:0];
         #10;
         $display("i[2]=%b,i[1]=%b,i[0]=%b,y=%b",i[2],i[1],i[0],y);

        end
        $finish;
    end


endmodule