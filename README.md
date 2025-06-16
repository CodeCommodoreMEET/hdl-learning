

````markdown
# 🚀 HDL Learning Journey – From Gates to RTL

**A progressive collection of Verilog/SystemVerilog projects demonstrating my structured path to VLSI mastery**  
by **Hodar Meet S**

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
[![Verilog](https://img.shields.io/badge/Verilog-2001-orange)](https://standards.ieee.org/ieee/1364/3891/)
[![GTKWave](https://img.shields.io/badge/Simulation-GTKWave-blue)](http://gtkwave.sourceforge.net/)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Hodar%20Meet-blue)](https://www.linkedin.com/in/hodar-meet-2200b1284/)
[![Email](https://img.shields.io/badge/Email-hodarmeet99010@gmail.com-red)](mailto:hodarmeet99010@gmail.com)

---

## 📘 Overview

This is a curated set of beginner-to-advanced Verilog projects. I created this repository to solidify my skills in **RTL design**, **simulation**, and **verification** as I work toward a career in the semiconductor industry.

All projects:
- Are implemented in **Verilog**
- Simulated using **Icarus Verilog + GTKWave**
- Include clean folder structures and testbenches

---

## 📚 Table of Contents
- [📈 Skill Progression](#-skill-progression)
- [💡 Project Portfolio](#-project-portfolio)
- [🔧 Toolchain Setup](#-toolchain-setup)
- [🧪 Verification Methodology](#-verification-methodology)
- [🎯 Career Goals](#-career-goals)
- [🤝 Contributing](#-contributing)

---

## 📈 Skill Progression

```mermaid
graph TD
    A[Combinational Logic] --> B[Sequential Logic]
    B --> C[FSM Design]
    C --> D[Pipelining & Timing Closure]
    D --> E[Protocols: AMBA, AXI, SPI, I2C]
    E --> F[SoC / ASIC Design]
````

---

## 💡 Project Portfolio

| Level        | Project Name   | Concepts Involved              | Verification Approach        |
| ------------ | -------------- | ------------------------------ | ---------------------------- |
| Beginner     | Half Adder     | Gate-level modeling            | Manual testbench & GTKWave   |
|              | Full Adder     | Behavioral + Gate-level        | Waveform inspection          |
|              | MUX / DEMUX    | `if`, `case`, structural style | Exhaustive simulation        |
| Intermediate | FIFO Buffer    | Clocked logic, counters        | Boundary and edge case tests |
|              | SPI Controller | FSM + protocol handling        | Assertion-based verification |
| Advanced     | RISC-V Core    | Pipeline, ALU, hazards         | UVM testbench (planned)      |
|              | AXI4 Interface | Bus protocol & arbitration     | Formal verification          |

---

## 🔧 Toolchain Setup

```bash
# Ubuntu / WSL (Windows Subsystem for Linux)
sudo apt update
sudo apt install iverilog gtkwave

# Example: Compile and run
iverilog -o my_design_tb my_design.v my_design_tb.v
vvp my_design_tb
gtkwave dump.vcd
```

---

## 🧪 Verification Methodology

**Approach:**

1. **Testbench Simulation** (Icarus Verilog)
2. **Waveform Validation** (GTKWave)
3. **Assertions** (SystemVerilog-style in advanced modules)
4. **Formal Verification** *(future: SymbiYosys)*

Example:

```verilog
// Simple assertion
assert property (@(posedge clk) disable iff (!reset_n) req |=> ##[1:3] ack);
```

---

## 🎯 Career Goals

💼 **Roles Targeted:**

* RTL Design Engineer
* Functional Verification Engineer
* FPGA Prototyping / Board Bring-Up

📌 **Tech Focus:**

* RISC-V based SoCs
* Low-power AI accelerators
* Chiplet-based design methodologies

---

## 🤝 Contributing

Want to contribute or collaborate? Feel free!

**Branch Naming:**

* `feature/<feature_name>`
* `bugfix/<issue_name>`

**Semantic Versioning:**

* `MAJOR.MINOR.PATCH` = Breaking / Features / Fixes

---

## 📬 Contact

**Hodar Meet S**
📧 [hodarmeet99010@gmail.com](mailto:hodarmeet99010@gmail.com)
🔗 [LinkedIn Profile](https://www.linkedin.com/in/hodar-meet-2200b1284)

---

> *“In VLSI, every nanosecond counts – in design and in learning.”*
> — Anonymous Chip Architect


