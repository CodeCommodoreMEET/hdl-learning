module Data_Comparator_1_Bit_behav(input i0,i1, output reg a_g_b,a_e_b,b_g_a);


always @(*) begin

case ({i0,i1})
2'b00: begin a_g_b=0;a_e_b=1;b_g_a=0; end
2'b01: begin a_g_b=0;a_e_b=0;b_g_a=1; end
2'b10: begin a_g_b=1;a_e_b=0;b_g_a=0; end
2'b11: begin a_g_b=0;a_e_b=1;b_g_a=0; end

endcase
end
    
    
  
endmodule