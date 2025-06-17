Here's a detailed and professional `README.md` for your **4-Bit Data Comparator** Verilog project, suitable for GitHub and LinkedIn visibility:

---

# 🔢 4-Bit Data Comparator – Verilog HDL Project

This project implements a **4-bit digital comparator** using **Behavioral Modeling** in Verilog. A comparator is a combinational circuit that compares two binary numbers and determines their relative magnitude.

---

## 📌 Features

* ✅ Behavioral modeling of 4-bit comparator logic
* 🔎 Compares two 4-bit inputs `a` and `b`
* 🧠 Outputs:

  * `a_g_b`: High when `a > b`
  * `a_e_b`: High when `a == b`
  * `b_g_a`: High when `a < b`
* 🧪 Fully automated testbench for all 256 input combinations
* 📊 GTKWave waveform visualization

---

## 📁 Folder Structure

```
13_4-Bit-Data_Comparator/
├── Data_Comparator_4_Bit_behav.v     # Verilog module (behavioral)
├── testbench.v                       # Testbench for simulation
├── Data_Comparator_4_Bit.vcd         # Generated VCD file (after sim)
├── images/
│   ├── Waveform.png                  # Screenshot of GTKWave output
│   └── All_Possible_Outputs.png      # Tabular output of all 256 tests
└── README.md                         # Project documentation
```

---

## 🔧 Simulation

### ✅ Toolchain

* Simulator: `Icarus Verilog`
* Waveform Viewer: `GTKWave`

### ▶️ To Compile & Simulate:

```bash
iverilog -o Data_Comparator_4_Bit_tb Data_Comparator_4_Bit_behav.v testbench.v
vvp Data_Comparator_4_Bit_tb
gtkwave Data_Comparator_4_Bit.vcd
```

---

## 📷 Sample Outputs

### ✅ Console Output

```
 a    | b    | a > b | a = b | a < b
------------------------------------
0000  | 0000 |   0   |   1   |   0
0000  | 0001 |   0   |   0   |   1
0001  | 0000 |   1   |   0   |   0
...
```

### 🌊 GTKWave View

> ![Waveform](images/Waveform.png)

---

## 📚 Concepts Used

* Behavioral modeling in Verilog
* Conditional `if-else` logic
* Testbench with looped test vectors
* Bitwise comparison using Verilog operators
* Timing simulation using `$dumpvars` and `$display`

---

## 🛠️ Author & Project Goal

This project is part of my [**HDL Learning Repository**](https://github.com/CodeCommodoreMEET/hdl-learning), created to showcase beginner to advanced-level Verilog projects and strengthen my skills toward a **VLSI/Semiconductor career**.

---

Let me know if you want this in a Markdown file (`README.md`) or want to directly push it to GitHub!
