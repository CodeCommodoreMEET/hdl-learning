
# 🔍 1-Bit Data Comparator – Verilog HDL Project

This project implements a **1-bit data comparator** using Verilog HDL in **behavioral modeling style**. The comparator takes two 1-bit binary inputs and produces three outputs indicating whether:

- Input A is greater than Input B
- Input A is equal to Input B
- Input B is greater than Input A

The design is tested with a Verilog testbench and verified using GTKWave simulation.

---

## 📁 Folder Structure

```

12\_1bit\_Comparator/
├── Data\_Comparator\_1\_Bit\_behav.v     # Behavioral Verilog module
├── testbench.v                       # Testbench for simulation
├── 1\_Bit\_Data\_Comparator.vcd         # VCD waveform file (generated)
├── images/
│   └── waveform.png                  # GTKWave waveform screenshot
└── README.md                         # Project documentation

```

---

## 🔧 Module Details

### 📌 Module Name: `Data_Comparator_1_Bit_behav`

| Port       | Direction | Width | Description                 |
|------------|-----------|-------|-----------------------------|
| `i0`       | Input     | 1-bit | Input A (LSB)               |
| `i1`       | Input     | 1-bit | Input B (LSB)               |
| `a_g_b`    | Output    | 1-bit | High when A > B             |
| `a_e_b`    | Output    | 1-bit | High when A == B            |
| `b_g_a`    | Output    | 1-bit | High when B > A             |

---

## 📜 Logic Description

| i0 (A) | i1 (B) | a_g_b | a_e_b | b_g_a |
|--------|--------|--------|--------|--------|
|   0    |   0    |   0    |   1    |   0    |
|   0    |   1    |   0    |   0    |   1    |
|   1    |   0    |   1    |   0    |   0    |
|   1    |   1    |   0    |   1    |   0    |

---

## 🧪 Simulation & Output

The testbench applies all 2-bit combinations of inputs (`i0`, `i1`) and logs the outputs.

### ✅ Sample Output:
```

## i1 i0 | a> b | a==b | b> a

0  0 |   0   |   1   |   0
0  1 |   0   |   0   |   1
1  0 |   1   |   0   |   0
1  1 |   0   |   1   |   0

````


## 🚀 How to Run

1. Compile the design and testbench:
   
   iverilog -o comparator Data_Comparator_1_Bit_behav.v testbench.v


2. Run the simulation:

   ```bash
   vvp comparator
   ```

3. Open the waveform in GTKWave:

   ```bash
   gtkwave 1_Bit_Data_Comparator.vcd
   ```

---

## 🧠 Learning Outcome

* Understanding of conditional logic in Verilog
* Writing behavioral models using `always @(*)`
* Creating basic testbenches for combinational circuits
* Visualizing signal transitions with GTKWave

> Designed as part of my HDL learning journey – check out more projects in this repo: [hdl-learning](https://github.com/hodarmeet/hdl-learning)


