//PARDON ME for using such a too long variable name its becoz i just wanted to tell and see myself when i again see it i dont have to optimize this code this is for learning and understanding puropse.


module Parity_Checker(input [2:0] a,
input p,output reg error );
reg computed_parity_after_fliiping_of_bits_due_to_noise;

always @(*) begin
    computed_parity_after_fliiping_of_bits_due_to_noise = a[2] ^ a[1] ^ a[0];
    if(computed_parity_after_fliiping_of_bits_due_to_noise!=p)begin
        error=1;//parity mismatche so error detected.
    end
    else
    begin
        error=0;
    end
end

 endmodule