
# 🔢 8-to-3 Priority Encoder – Verilog HDL Project

This project implements an **8-to-3 Priority Encoder** using Verilog in **behavioral modeling style**.
It encodes the position of the highest-priority active input bit among 8 input lines (`i0` to `i7`) into a 3-bit binary output.

---

## 📌 What is a Priority Encoder?

A **priority encoder** takes multiple input lines and outputs the binary representation of the highest-priority active input. Unlike a simple encoder, if more than one input is active simultaneously, the **highest-priority input (typically the one with the highest index)** is considered.

For example:

* If `i7 = 1`, and all others are also 1, the output is `111`.
* If `i6 = 1` and `i7 = 0`, output is `110`, and so on.

---

## 🧠 Behavioral Modeling Approach

Behavioral modeling uses high-level constructs (like `if-else`) to describe the functionality.

```verilog
module Priority_Encoder_8to3_behav(
    input i7, i6, i5, i4, i3, i2, i1, i0,
    output reg [2:0] y
);

always @(*) begin
    if      (i7) y = 3'b111;
    else if (i6) y = 3'b110;
    else if (i5) y = 3'b101;
    else if (i4) y = 3'b100;
    else if (i3) y = 3'b011;
    else if (i2) y = 3'b010;
    else if (i1) y = 3'b001;
    else if (i0) y = 3'b000;
    else         y = 3'bxxx; // undefined if all inputs are 0
end

endmodule
```

---

## 🧪 Testbench

An exhaustive testbench is written to simulate all 256 combinations (`2^8`) of the 8 input lines.

### Key Features:

* Loops from 0 to 255 to assign every possible input combination.
* Observes priority behavior and prints the corresponding output.
* Generates a VCD file (`.vcd`) for waveform analysis in GTKWave.

```verilog
for (i = 0; i < 256; i = i + 1) begin
    {i7,i6,i5,i4,i3,i2,i1,i0} = i[7:0];
    #10;
    $display("i7=%b i6=%b i5=%b i4=%b i3=%b i2=%b i1=%b i0=%b => y=%b",
             i7, i6, i5, i4, i3, i2, i1, i0, y);
end
```

---

## 📊 Simulation Output

* Simulations were run using `Icarus Verilog`.
* Waveform generated with `GTKWave`.

### ✅ Sample Output:

```
i7=0 i6=0 i5=1 i4=1 i3=0 i2=0 i1=1 i0=1 => y=101
```

📸 **Images Included**:

* `Waveform.png`: Captures the GTKWave output.
* `All_Possible_Combinations.png`: Reference truth table.

---

## 📁 Folder Structure

```
09_8to3_Priority_Encoder/
├── Priority_Encoder_8to3_behav.v       # Verilog behavioral model
├── testbench.v                         # Testbench with all input combinations
├── Priority_Encoder_8to3.vcd           # Simulation output for GTKWave
├── images/
│   ├── Waveform.png
│   └── All_Possible_Combinations.png
└── README.md                           # Project documentation
```

---

## 🚀 How to Simulate

```bash
# Compile
iverilog -o priority_encoder_tb Priority_Encoder_8to3_behav.v testbench.v

# Run Simulation
vvp priority_encoder_tb

# View Waveform
gtkwave Priority_Encoder_8to3.vcd
```

---

## 📚 Learning Outcome

* Understand how **priority logic** is implemented.
* Learn the difference between **encoders** and **priority encoders**.
* Practice **behavioral modeling** and testbench creation in Verilog.
* Get hands-on with **simulation tools** (Icarus Verilog & GTKWave).

---

## 🔗 Repository

This project is a part of [🔗 `hdl-learning`](https://github.com/CodeCommodoreMEET/hdl-learning) – a growing collection of HDL mini-projects for learning and showcasing Verilog skills.

