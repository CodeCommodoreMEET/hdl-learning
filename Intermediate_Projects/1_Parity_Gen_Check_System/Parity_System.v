module Parity_System(input [2:0] a,
input parity_type,
input [2:0] Checker_Data, output wire p,error);

Parity_Generator behav(.a(a),.parity_type(parity_type),.p(p));
Parity_Checker Behav(.a(Checker_Data),.p(p),.error(error));

endmodule