
```markdown
# 🔢 Priority Encoder (4-to-2) – Verilog HDL Project

This project implements a **4-to-2 Priority Encoder** using **behavioral modeling** in Verilog.  
It is tested using a self-checking testbench and simulated with **GTKWave** for waveform analysis.

---

## 📘 What is a Priority Encoder?

A **priority encoder** takes multiple input lines and outputs the binary representation of the index of the highest-priority active input.

For a 4-to-2 priority encoder:
- It has **4 input lines**: `i3`, `i2`, `i1`, `i0`
- And **2 output lines**: `y[1]`, `y[0]`
- Input priority: `i3` > `i2` > `i1` > `i0`

> If multiple inputs are high, the **highest-priority input (with the highest index)** is encoded.

---

## 🧠 Functional Truth Table

| i3 | i2 | i1 | i0 | y[1] | y[0] |
|----|----|----|----|------|------|
| 0  | 0  | 0  | 0  |  x   |  x   |
| 0  | 0  | 0  | 1  |  0   |  0   |
| 0  | 0  | 1  | x  |  0   |  1   |
| 0  | 1  | x  | x  |  1   |  0   |
| 1  | x  | x  | x  |  1   |  1   |

> `x` denotes "don’t care" – irrelevant due to higher-priority input being active.

---

## 📁 Folder Structure

```

06\_4to2\_priority\_encoder/
├── Priority\_Encoder\_4to2\_behav.v      # Behavioral model
├── testbench.v                        # Testbench to validate functionality
├── Encoder\_4to2.vcd                   # Simulation waveform (generated)
├── images/
│   ├── circuit\_diagram.png            # Optional: Logical schematic
│   └── waveform\_output.png            # GTKWave output screenshot
└── README.md                          # This documentation

````

---

## 🔧 Implementation Details

### 📄 `Priority_Encoder_4to2_behav.v`

```verilog
module Priority_Encoder_4to2_behav(input i0, i1, i2, i3, output reg [1:0] y);

    always @(*) begin
        if (i3)       y = 2'b11;
        else if (i2)  y = 2'b10;
        else if (i1)  y = 2'b01;
        else if (i0)  y = 2'b00;
        else          y = 2'bxx;  // No input active
    end

endmodule
````

---

### 🧪 `testbench.v`

The testbench:

* Iterates over all 16 combinations of 4 input bits
* Displays outputs for each case
* Dumps simulation data to `.vcd` file for GTKWave

```verilog
`timescale 1ns/1ps

module testbench;

    reg i0, i1, i2, i3;
    wire [1:0] y;
    integer i;

    Priority_Encoder_4to2_behav behav(i0, i1, i2, i3, y);

    initial begin
        $dumpfile("Encoder_4to2.vcd");
        $dumpvars(0, testbench);

        for (i = 0; i < 16; i = i + 1) begin
            {i3, i2, i1, i0} = i[3:0];
            #10;
            $display("i3=%b, i2=%b, i1=%b, i0=%b -> y[1]=%b, y[0]=%b", i3, i2, i1, i0, y[1], y[0]);
        end

        $finish;
    end

endmodule
```

---

## 📊 Simulation Waveform (GTKWave)

You can view the waveform by running:

```bash
gtkwave Encoder_4to2.vcd
```

### 🔍 Sample GTKWave Output:

![Waveform Output](images/waveform_output.png)

---

## 🔗 How to Run (using Icarus Verilog)

```bash
iverilog -o encoder_test Priority_Encoder_4to2_behav.v testbench.v
vvp encoder_test
```

Then open the `.vcd` in GTKWave:

```bash
gtkwave Encoder_4to2.vcd
```

---

## ✅ Learning Highlights

* Understanding **priority logic** and control flow
* Behavioral modeling in Verilog (`always @(*)`)
* Using `$display`, `$dumpfile`, `$dumpvars` for debugging
* Visualizing signals using **GTKWave**
* Building scalable and testable HDL projects

---

## 📌 Author

**Meet Hodar**
📧 [hodarmeet99010@gmail.com](mailto:hodarmeet99010@gmail.com)
🔗 [GitHub: hodarmeet](https://github.com/hodarmeet)
🔗 [LinkedIn: Meet Hodar](https://www.linkedin.com/in/hodar-meet-2200b1284)

