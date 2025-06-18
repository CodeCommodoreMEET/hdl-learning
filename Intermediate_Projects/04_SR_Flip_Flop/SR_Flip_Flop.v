module SR_Flip_Flop (
    input s,r,clk,output reg q,
    output wire qbar    
);
assign qbar=~q;
    always @(posedge clk) begin
        case({s,r})
        2'b00: q<= q;
        2'b01: q<= 0;
        2'b10: q<= 1;
        2'b11: q<= 1'bx;
        endcase
    end
endmodule

// Here I have used <= which is diffrent then = in sense of blocking 
/*
= → Blocking Assignment
Executes immediately (in order).

Used mostly in combinational logic (always @*).

Think of it like “normal” assignment in most programming languages.

verilog
Copy
Edit
a = b + c; // b + c is calculated and assigned to a right away
🛠️ <= → Non-blocking Assignment
Executes after the entire always block finishes.

Used in sequential logic (always @(posedge clk)).

Mimics real hardware behavior (like flip-flops, registers).

verilog
Copy
Edit
always @(posedge clk) begin
    q <= d; // q takes the value of d on the rising edge of clk
end
✅ Why use <= in flip-flops?
Because multiple assignments in a clocked block should not interfere with each other. For example:

verilog
Copy
Edit
always @(posedge clk) begin
    a <= b;
    b <= a;
end
This works properly with <=, but would go wrong with =.

🧠 Rule of Thumb:
Situation	Use
Inside always @*	= (blocking)
Inside always @(posedge clk)	<= (non-blocking)
*/