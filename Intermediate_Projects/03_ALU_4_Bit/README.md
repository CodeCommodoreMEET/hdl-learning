
# ⚙️ 4-Bit ALU – Verilog HDL Project

This project implements a **4-bit ALU (Arithmetic and Logic Unit)** in Verilog. The ALU performs both arithmetic and logic operations based on a 3-bit `sel` input.

---

## 🔧 Features

The ALU supports the following operations:

| `sel` | Operation         | Description               |
|-------|-------------------|---------------------------|
| 000   | Addition           | `a + b`                   |
| 001   | Subtraction        | `a - b`                   |
| 010   | AND                | `a & b`                   |
| 011   | OR                 | `a | b`                   |
| 100   | XOR                | `a ^ b`                   |
| 101   | NOT                | `~a`                      |
| 110   | Left Shift         | `a << 1`                  |
| 111   | Right Shift        | `a >> 1`                  |

The design also outputs:
- `carry`: Indicates overflow or borrow (for add/subtract)
- `zero`: Active when result is all zeroes

---

## 📁 Folder Structure

```
03_ALU_4_Bit/
├── ALU_4_Bit.v              # ALU module
├── testbench.v              # Testbench for exhaustive testing
├── ALU_4_Bit.vcd            # Waveform file (generated after simulation)
├── images/
│   └── waveform.png         # GTKWave screenshot (if applicable)
└── README.md                # This documentation
```

---

## ▶️ Simulation

You can compile and run the simulation using Icarus Verilog:

```bash
iverilog -o alu_tb ALU_4_Bit.v testbench.v
vvp alu_tb
```

To view the waveform in GTKWave:

```bash
gtkwave ALU_4_Bit.vcd
```

---

## 📫 Contact

- **LinkedIn**: [Hodar Meet](https://www.linkedin.com/in/hodar-meet-2200b1284)
- **Email**: hodarmeet99010@gmail.com

