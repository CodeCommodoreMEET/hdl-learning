module BCDto7_Segment_Decoder_behav (input [3:0] k,output reg a,b,c,d,e,f,g);

always @(*) begin
  
case(k)

 4'b0000: begin a=1; b=1; c=1; d=1; e=1; f=1; g=0; end // 0
        4'b0001: begin a=0; b=1; c=1; d=0; e=0; f=0; g=0; end // 1
        4'b0010: begin a=1; b=1; c=0; d=1; e=1; f=0; g=1; end // 2
        4'b0011: begin a=1; b=1; c=1; d=1; e=0; f=0; g=1; end // 3
        4'b0100: begin a=0; b=1; c=1; d=0; e=0; f=1; g=1; end // 4
        4'b0101: begin a=1; b=0; c=1; d=1; e=0; f=1; g=1; end // 5
        4'b0110: begin a=1; b=0; c=1; d=1; e=1; f=1; g=1; end // 6
        4'b0111: begin a=1; b=1; c=1; d=0; e=0; f=0; g=0; end // 7
        4'b1000: begin a=1; b=1; c=1; d=1; e=1; f=1; g=1; end // 8
        4'b1001: begin a=1; b=1; c=1; d=1; e=0; f=1; g=1; end // 9
        default: begin a=0; b=0; c=0; d=0; e=0; f=0; g=0; end  // blank


endcase

end



    
  
endmodule