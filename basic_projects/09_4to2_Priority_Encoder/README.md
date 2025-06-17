
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


## 📊 Simulation Waveform (GTKWave)

You can view the waveform by running:

```bash
gtkwave Encoder_4to2.vcd
```

### 🔍 Sample GTKWave Output:

![Waveform Output](https://github.com/CodeCommodoreMEET/hdl-learning/blob/main/basic_projects/09_4to2_Priority_Encoder/images/Waveform.png)
Can also vist images folder <------
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

