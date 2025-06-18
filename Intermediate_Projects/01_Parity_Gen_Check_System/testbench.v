`timescale 1ns/1ns

module testbench;
reg [2:0] a;
 reg parity_type;
 reg [2:0] Checker_Data;
 wire p,error;
integer i;
    Parity_System behav(.a(a),.parity_type(parity_type),.Checker_Data(Checker_Data),.p(p),.error(error));



 initial begin
    $dumpfile("Parity_System.vcd");
        $dumpvars(0, testbench);
    parity_type=0;//even parity 
    $display("\n----- EVEN PARITY CHECK -----");
    for(i=0;i<8;i=i+1)
    begin

        a=i[2:0];
        #5;
        Checker_Data=a; //no flipping happend 
        #5;
        //manually flipping 1 bit
$display("[EVEN] Input = %b, Parity = %b, Checker_Data = %b, Error = %b", a, p, Checker_Data, error);
        Checker_Data=a^3'b010;
        #5;
         //XOR is genrally used for flipping any bit in electronic likewise what we have to do is that whichever bit we have to flipi just write that bit as 1 and other as 0 and only that particular bit will be flliped
 $display("[EVEN] Input = %b, Parity = %b, Checker_Data (flipped) = %b, Error = %b", a, p, Checker_Data, error);end
parity_type=1;
  $display("\n----- ODD PARITY CHECK -----");
    for(i=0;i<8;i=i+1)
    begin

        a=i[2:0];
        #5;
        Checker_Data=a; 
        #5;
        $display("[ODD ] Input = %b, Parity = %b, Checker_Data = %b, Error = %b", a, p, Checker_Data, error);

        Checker_Data=a^3'b010;
        #5;
        $display("[ODD ] Input = %b, Parity = %b, Checker_Data (flipped) = %b, Error = %b", a, p, Checker_Data, error);
    end
 



$finish;



 end
endmodule