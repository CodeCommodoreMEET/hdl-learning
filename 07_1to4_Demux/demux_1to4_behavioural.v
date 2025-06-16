module  demux_1to4_behavioural(input i,s0,s1,e, output reg y0,y1,y2,y3);

always@(*)begin
if(e==1)begin
     
      y0 = 0;
    y1 = 0;
    y2 = 0;
    y3 = 0;
          case({s0,s1})
          2'b00: y0=i;
           2'b01: y1=i;
            2'b10: y2=i;
             2'b11: y3=i;
            
          endcase
end

end

endmodule