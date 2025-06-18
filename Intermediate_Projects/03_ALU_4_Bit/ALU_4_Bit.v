`timescale 1ns/1ns

module ALU_4_Bit(input [3:0]a,input [3:0]b, input [2:0] sel,output reg  [3:0] result,output reg  carry,output reg  zero);
reg [4:0] temp;
always @(*) begin
    case(sel)
    3'b000: begin temp=a+b;
    result=temp[3:0];
    carry=temp[4]; 
    end
    3'b001: begin result=a-b; 
    temp = a-b;
    result = temp[3:0];
    carry= (a<b);
    end
    3'b010: begin result=a&b; end
    3'b011: begin result=a|b; end
    3'b100: begin result=a^b; end
    3'b101: begin result=~a;end
    3'b110: begin result=a<<1;end
    3'b111: begin result=a>>1; end

    endcase
    zero=(result==4'b0000);
end


endmodule