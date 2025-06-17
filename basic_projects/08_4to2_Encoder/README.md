

# 4-to-2 Encoder

This project implements a 4-to-2 priority encoder in Verilog. A priority encoder converts multiple binary inputs into a smaller number of outputs, giving priority to the highest-order active input.

## Description

The 4-to-2 encoder takes 4 input lines and encodes them into 2 output lines based on priority (with input[3] having the highest priority). The encoder also includes a valid output signal that indicates when at least one input is active.

## Files

`4to2_encoder.v` - Verilog implementation of the 4-to-2 priority encoder
- `tb_4to2_encoder.v` - Testbench for verifying the encoder
- `images/` - Folder containing waveform screenshots
  - `waveform1.png`
  - `waveform2.png`

## Usage

1. Compile and simulate the design using your preferred Verilog simulator (Icarus Verilog, ModelSim, etc.)
2. Run the testbench to verify the functionality
3. View the waveforms to observe the encoder's behavior

## Truth Table

| Input[3:0] | Output[1:0] | Valid |
|------------|-------------|-------|
| 1xxx       | 11          | 1     |
| 01xx       | 10          | 1     |
| 001x       | 01          | 1     |
| 0001       | 00          | 1     |
| 0000       | xx          | 0     |
