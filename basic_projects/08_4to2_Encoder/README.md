
```markdown
# 4-to-2 Encoder

This project implements a 4-to-2 priority encoder in Verilog. A priority encoder converts multiple binary inputs into a smaller number of outputs, giving priority to the highest-order active input.

## Description

The 4-to-2 encoder takes 4 input lines and encodes them into 2 output lines based on priority (with input[3] having the highest priority). The encoder also includes a valid output signal that indicates when at least one input is active.

## Waveform Examples

Below are waveform examples demonstrating the encoder's operation:

1. [Waveform Example 1](./images/waveform1.png)
2. [Waveform Example 2](./images/waveform2.png)

## Files

- `4to2_encoder.v` - Verilog implementation of the 4-to-2 priority encoder
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
```

Note: I've assumed the image filenames are `waveform1.png` and `waveform2.png`. Please adjust these names in the links if your actual image files have different names.

The links in the README are relative paths, assuming the README is in the `08_4to2_Encoder` folder and the images are in the `images` subfolder of that directory. This matches the repository structure you mentioned: `hdl-learning/main/basic_projects/08_4to2_Encoder/images/`.

If you need to provide absolute paths to the images in GitHub, you would use the full URL like:
`https://github.com/CodeCommodoreMEET/hdl-learning/blob/main/basic_projects/08_4to2_Encoder/images/waveform1.png`