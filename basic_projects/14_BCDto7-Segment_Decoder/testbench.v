`timescale 1ns/1ns

module testbench;

reg [3:0] k;
wire a, b, c, d, e, f, g;

integer i;

BCDto7_Segment_Decoder_behav behav(k, a, b, c, d, e, f, g);

initial begin
    $dumpfile("BCDto7-Segment_Decoder.vcd");
    $dumpvars(0, testbench);
    $display(" BCD | a b c d e f g | 7-segment");
    $display("----------------------------------");
    for (i = 0; i < 16; i = i + 1) begin
        k = i[3:0];
        #10;
        if (i < 10) begin
            $display(" %b%b%b%b | %b %b %b %b %b %b %b |   %0d",
                     k[3], k[2], k[1], k[0],
                     a, b, c, d, e, f, g,
                     i);
        end else begin
            $display(" %b%b%b%b | %b %b %b %b %b %b %b |",
                     k[3], k[2], k[1], k[0],
                     a, b, c, d, e, f, g);
        end
    end
    $finish;
end

endmodule