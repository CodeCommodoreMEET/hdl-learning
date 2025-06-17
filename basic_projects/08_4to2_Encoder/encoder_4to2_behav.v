module encoder_4to2_behav(input i3,i2,i1,i0, output reg y1,y0);

always@(*)begin
    
casez({i3,i2,i1,i0})

4'b0000: begin  y1=1'bx;  y0=1'bx;end
4'b0001: begin  y1=0; y0=0; end
4'b001?: begin  y1=0; y0=1; end
4'b01??: begin  y1=1; y0=0; end
4'b1???: begin y1=1; y0=1;   end

default: begin y1=1'bx;  y0=1'bx; end

endcase

end




 endmodule