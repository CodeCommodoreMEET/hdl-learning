module Priority_Encoder_8to3_behav(input i7,i6,i5,i4,i3,i2,i1,i0, output reg [2:0] y);


always @(*) begin
  

         if(i7) y=3'b111; 
         else if (i6) y=3'b110;
         else if (i5) y=3'b101;
         else if (i4) y=3'b100;
         else if (i3) y=3'b011;
         else if (i2) y=3'b010;
         else if (i1) y=3'b001;
         else if (i0) y=3'b000;
         else begin
y=3'bx;
         end
       
   


   
end
 
  
endmodule