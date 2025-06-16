module demux_1to2_behavioural (
    input i,e,s, output reg y0,y1);
always@(*) begin
if(e==1)begin
case(s)
1'b0:  begin
     y0=i; y1=0;
end
1'b1: begin
     y0=0; y1=i;
end
endcase
end
else begin
y0=0;
y1=0;
end
end

    
endmodule