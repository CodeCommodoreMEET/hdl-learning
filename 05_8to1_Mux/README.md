
## 📘 8-to-1 Multiplexer (MUX) – Gate-Level & Behavioral Modeling in Verilog

### 🔗 Repository: `hdl-learning/05_8to1_Mux`

This project demonstrates the implementation, simulation, and verification of an **8-to-1 Multiplexer (MUX)** using **both Gate-Level Modeling** and **Behavioral Modeling** in **Verilog HDL**.

---

### 📌 Table of Contents

* [🔧 Project Description](#-project-description)
* [🧠 Functional Overview](#-functional-overview)
* [💡 Design Approach](#-design-approach)

  * [Gate-Level Modeling](#gate-level-modeling)
  * [Behavioral Modeling](#behavioral-modeling)
* [🧪 Testbench Details](#-testbench-details)
* [📈 Simulation & Waveform](#-simulation--waveform)
* [📁 File Structure](#-file-structure)
* [🚀 How to Run the Code](#-how-to-run-the-code)
* [📷 Screenshots / Waveforms](#-screenshots--waveforms)
* [📚 What I Learned](#-what-i-learned)
* [🔗 References](#-references)

---

### 🔧 Project Description

An **8:1 multiplexer** is a combinational logic circuit that selects one of 8 input lines and routes it to a single output line based on the values of 3 selection lines. This project implements the MUX using two different abstraction levels:

1. **Gate-Level Modeling**: Realistic representation using basic logic gates (`and`, `or`, `not`).
2. **Behavioral Modeling**: High-level description using `case` statements in `always` blocks.

---

### 🧠 Functional Overview

* **Inputs**:

  * Data Inputs: `i0` to `i7` (8 single-bit inputs)
  * Select Inputs: `s0`, `s1`, `s2` (3 bits to choose one of 8 inputs)
  * Enable Input: `E` (active-high enable control)

* **Output**:

  * `Y`: Final output (selected input line if `E=1`, otherwise 0)

---

### 💡 Design Approach

#### Gate-Level Modeling

* Used NOT gates to generate complements of select lines.
* Used AND gates to create select conditions like `s0' s1 s2' i2`.
* Combined all intermediate lines using an OR gate.
* Used a final AND gate with the enable (`E`) to generate the output `Y`.

📄 File: `mux_8to1_gatelevel.v`

#### Behavioral Modeling

* Modeled the logic using an `always @(*)` block with a `case` statement based on `{s2, s1, s0}`.
* Checked for the enable (`E`) before selecting any input.

📄 File: `mux_8to1_behavioural.v`

---

### 🧪 Testbench Details

* The testbench initializes all inputs and enables signal toggling and exhaustive simulation.
* For-loop simulates **all 2¹¹ = 2048 combinations** of inputs and select lines.
* Includes `$display()` statements for runtime comparison between gate-level and behavioral outputs.

📄 File: `testbench.v`

---

### 📈 Simulation & Waveform

* **VCD File**: `mux_8to1.vcd` generated using `$dumpfile` and `$dumpvars`.
* **GTKWave**: View signal transitions over time and verify correct selection logic.

Optional pre-configured GTKWave file:

📄 File: `mux_8to1.gtkw`

```bash
gtkwave mux_8to1.vcd mux_8to1.gtkw
```

---

### 📁 File Structure

```bash
05_8to1_Mux/
│
├── mux_8to1_gatelevel.v       # Gate-level implementation
├── mux_8to1_behavioural.v     # Behavioral implementation
├── testbench.v                # Testbench to verify functionality
├── mux_8to1.vcd               # VCD waveform dump (auto-generated)
├── mux_8to1.gtkw              # GTKWave configuration (optional)
├── images/
│   └── mux_circuit_diagram.png # Logic diagram of 8:1 MUX (optional)
└── README.md                  # This README file
```

---

### 🚀 How to Run the Code

#### 📦 Requirements

* **Icarus Verilog** (for simulation)
* **GTKWave** (for waveform viewing)

#### 🔧 Compile & Simulate

```bash
iverilog -o mux_8to1_tb testbench.v mux_8to1_gatelevel.v mux_8to1_behavioural.v
vvp mux_8to1_tb
```

#### 📊 View Waveform

```bash
gtkwave mux_8to1.vcd mux_8to1.gtkw
```

---

### 📷 Screenshots / Waveforms

📸 *Place your waveform images or logic diagram here*

Example:

* ✅ **Correct output when `E=1` and `s2s1s0=101`: `Y = i5`**
* ❌ **Output is forced to 0 when `E=0` regardless of select lines**

---

### 📚 What I Learned

* Differences between **gate-level** and **behavioral** abstraction in Verilog
* Writing a clean and exhaustive **testbench**
* How to use **Icarus Verilog** for compilation and simulation
* Creating and analyzing **waveform output** with GTKWave
* Importance of **modular code structure** for readability and debugging
* Better understanding of **MUX logic** and **control signal (Enable) behavior**

---

### 🔗 References

* [NPTEL Verilog Course – Prof. Indranil Sengupta (IIT KGP)](https://nptel.ac.in/courses/117105080)
* [Icarus Verilog Documentation](http://iverilog.icarus.com/)
* [GTKWave User Guide](http://gtkwave.sourceforge.net/)
* \[Verilog HDL Textbook – Samir Palnitkar]

