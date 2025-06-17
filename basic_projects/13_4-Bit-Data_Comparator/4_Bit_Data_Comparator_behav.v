module Data_Comparator_4_Bit_behav(input [3:0] a,b, output reg a_g_b,a_e_b,b_g_a);


always @(*) begin
      a_g_b = 0;
    a_e_b = 0;
    b_g_a = 0;
if(a>b)
a_g_b = 1;
else if(a==b) 
a_e_b = 1;
else
b_g_a = 1;

end
    
    
  
endmodule