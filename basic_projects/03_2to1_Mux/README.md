# 2:1 Multiplexer in Verilog (Gate-Level & Behavioral)

This project demonstrates the implementation of a **2:1 Multiplexer** using both **gate-level modeling** and **behavioral modeling** in Verilog HDL. It also includes a comprehensive **testbench** to verify functionality and generate waveform output using **Icarus Verilog** and **GTKWave**.

---

## 📘 Table of Contents

- [📌 Objective](#objective)
- [🧠 Theory - What is a 2:1 MUX?](#theory)
- [🛠️ File Structure](#file-structure)
- [📂 Module Descriptions](#module-descriptions)
- [🧪 Testbench Explanation](#testbench-explanation)
- [🔄 Simulation & Waveform](#simulation-and-waveform)
- [🖼️ GTKWave Screenshot](#gtkwave-screenshot)
- [✅ Expected Output Logic](#expected-output-logic)
- [📎 How to Run](#how-to-run)
- [📚 Learnings](#learnings)
- [📸 Author Info](#author-info)

---

## 📌 Objective

To design and verify a **2-to-1 Multiplexer** circuit:
- Implemented using both **gate-level primitives** (`and`, `or`, `not`) and **behavioral `if` conditions**.
- Simulated using **Icarus Verilog**.
- Waveform visualized with **GTKWave**.

---

## 🧠 Theory

A **2:1 multiplexer** selects between two inputs (`i0`, `i1`) based on a **select line `s`**, and optionally **Enable `E`**.

**Output Logic:**
```

Y = (s == 0) ? i0 : i1  when E == 1
Y = 0                   when E == 0


## 🛠️ File Structure

```

03\_2to1\_Mux/
│
├── mux\_2to1\_gatelevel.v       # Gate-level implementation
├── mux\_2to1\_behavioural.v     # Behavioral implementation
├── testbench.v                # Common testbench for both
├── mux\_2to1.vcd               # Generated waveform dump
├── images/
│   └── waveform.png           # Screenshot of GTKWave waveform
└── README.md                  # This documentation

````

---

## 📂 Module Descriptions

### ✅ mux_2to1_gatelevel.v

Implements 2:1 MUX using basic gates:

```verilog
not g0 (s_not, s);
and g1 (w1, i0, s_not);
and g2 (w2, i1, s);
or  g4 (w3, w1, w2);
and g3 (Y, w3, E);  // Enable signal masks output
````

### ✅ mux\_2to1\_behavioural.v

Implements same logic using `if-else` in procedural block:

```verilog
always @(*) begin
  if (E == 0)
    Y = 0;
  else
    Y = (s == 0) ? i0 : i1;
end
```

---

## 🧪 Testbench Explanation

File: `testbench.v`

* **Initial phase (E = 0):**

  * Forces unknown (`x`) values to `i0`, `i1`, `s`.
  * Ensures output is `0`.

* **Main test loop (E = 1):**

  * Cycles through all 8 combinations of `{i0, i1, s}` using a `for` loop.
  * Displays both behavioral and gate-level outputs.

```verilog
for (i = 0; i < 8; i = i + 1) begin
  {i0, i1, s} = i[2:0];
  #10;
  $display(...);
end
```

---

## 🔄 Simulation and Waveform

### 1. ✅ Compilation:

```bash
iverilog -o 2to1_Mux_tb mux_2to1_behavioural.v mux_2to1_gatelevel.v testbench.v
```

### 2. ✅ Run the Simulation:

```bash
vvp 2to1_Mux_tb
```

### 3. ✅ View Waveform in GTKWave:

```bash
gtkwave mux_2to1.vcd
```

Make sure `gtkwave` is installed and in your system PATH.

---

## 🖼️ GTKWave Screenshot

> See `images/waveform.png` for waveform output

* Green lines show valid signals (`0` and `1`)
* Red lines/X (`x`) indicate unknowns during `E=0` phase
* Outputs `Y_gate` and `Y_behav` match exactly

---

## ✅ Expected Output Logic Table

| E                        | s | i0 | i1 | Y |
| -------------------------| - | -- | -- | - |
| 0                        | X | X  | X  | 0 |
| 1                        | 0 | 0  | 0  | 0 |
| 1                        | 0 | 1  | 0  | 1 |
| 1                        | 1 | 0  | 1  | 1 |
| 1                        | 1 | 1  | 0  | 0 |
| ... (all 8 combinations) |   |    |    |   |

---

## 📎 How to Run (Step-by-Step)

1. Open terminal and navigate to `03_2to1_Mux` directory.
2. Compile:

   ```bash
   iverilog -o 2to1_Mux_tb mux_2to1_behavioural.v mux_2to1_gatelevel.v testbench.v
   ```
3. Run the simulation:

   ```bash
   vvp 2to1_Mux_tb
   ```
4. Open waveform:

   ```bash
   gtkwave mux_2to1.vcd
   ```

---

## 📚 Learnings

* Difference between gate-level and behavioral modeling.
* How to use `reg`, `wire`, `initial`, and procedural blocks.
* Use of `$dumpfile` and `$dumpvars` for waveform generation.
* How `E`, `s`, `i0`, and `i1` control output `Y`.
* Visualization with GTKWave for debugging and verification.

---

g

> 📦 *Project is part of my Verilog learning journey. Built using open-source tools: Icarus Verilog + GTKWave.*
