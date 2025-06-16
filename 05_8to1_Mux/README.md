# **8-to-1 Multiplexer (MUX) - Verilog Implementation**  

## **📌 Overview**  
This repository contains **Verilog HDL** implementations of an **8-to-1 Multiplexer (MUX)** using two different modeling styles:  
1. **Gate-Level Modeling** (Structural Design)  
2. **Behavioral Modeling** (High-Level Abstraction)  

A comprehensive **testbench** is included to verify the functionality of both implementations, along with simulation waveforms for validation.  

---

## **📝 Table of Contents**  
1. [Introduction](#-introduction)  
2. [Multiplexer Basics](#-multiplexer-basics)  
3. [Design Implementations](#-design-implementations)  
4. [Testbench & Simulation](#-testbench--simulation)  
5. [Results & Waveforms](#-results--waveforms)  
6. [How to Run](#-how-to-run)  
7. [Dependencies](#-dependencies)  
8. [Contributing](#-contributing)  
9. [License](#-license)  

---

## **🎯 Introduction**  
A **Multiplexer (MUX)** is a fundamental combinational circuit that selects one of several input signals and forwards it to a single output line based on a set of **select lines**.  

This project demonstrates two different Verilog modeling approaches:  
- **Gate-Level (Structural)**: Implements the MUX using basic logic gates (`AND`, `OR`, `NOT`).  
- **Behavioral (High-Level)**: Uses `if-else` and `case` statements for more abstract and readable code.  

A **testbench** is provided to verify both designs by exhaustively testing all possible input combinations, ensuring correctness.  

---

## **🔧 Multiplexer Basics**  
An **8-to-1 MUX** has:  
- **8 Inputs** (`i0` to `i7`)  
- **3 Select Lines** (`s0`, `s1`, `s2`) → \(2^3 = 8\) combinations  
- **1 Output** (`Y`)  
- **1 Enable Signal** (`E`) → Active High  

**Truth Table:**  

| **Enable (E)** | **Select Lines (s2 s1 s0)** | **Output (Y)** |
|----------------|-----------------------------|----------------|
| 0              | X X X                       | 0 (Disabled)   |
| 1              | 0 0 0                       | i0             |
| 1              | 0 0 1                       | i1             |
| 1              | 0 1 0                       | i2             |
| 1              | 0 1 1                       | i3             |
| 1              | 1 0 0                       | i4             |
| 1              | 1 0 1                       | i5             |
| 1              | 1 1 0                       | i6             |
| 1              | 1 1 1                       | i7             |

---

## **💻 Design Implementations**  

### **🔌 Gate-Level MUX (Structural Design)**  
- Built using **basic logic gates** (`AND`, `OR`, `NOT`).  
- **Internal signals** (`w0` to `w8`) represent intermediate outputs.  
- **Enable (`E`)** gates the final output.  

### **⚡ Behavioral MUX (High-Level Design)**  
- Uses **`case` statement** for selection logic.  
- More **readable** and **scalable** for complex designs.  

---

## **🧪 Testbench & Simulation**  
- **Tests all possible input combinations** (2048 cases).  
- **Compares outputs** of both MUX implementations.  
- Generates **VCD waveform** for analysis.  

---

## **📊 Results & Waveforms**  
The simulation waveforms confirm that both implementations produce identical outputs for all input combinations.  

### **Key Observations:**  
1. **When `E = 0`**, the output `Y` is always `0` (disabled state).  
2. **When `E = 1`**, the MUX correctly routes the selected input to `Y` based on `s2, s1, s0`.  
3. **Both designs (Gate-Level & Behavioral) match** in functionality.  

---

## **🚀 How to Run**  
### **Simulation Steps:**  
1. **Compile the Verilog files:**  
   ```bash
   iverilog -o mux_8to1_tb testbench.v mux_8to1_gatelevel.v mux_8to1_behavioural.v
   ```  
2. **Run the simulation:**  
   ```bash
   vvp mux_8to1_tb
   ```  
3. **View waveforms (GTKWave):**  
   ```bash
   gtkwave mux_8to1.vcd
   ```  

---

## **📦 Dependencies**  
- **Simulator:** [Icarus Verilog (iverilog)](http://iverilog.icarus.com/)  
- **Waveform Viewer:** [GTKWave](http://gtkwave.sourceforge.net/)  

---

## **🤝 Contributing**  
Contributions are welcome! If you find any issues or want to improve the design:  
1. **Fork** the repository.  
2. Create a **new branch** (`git checkout -b feature/improvement`).  
3. **Commit** your changes (`git commit -m "Add feature"`).  
4. **Push** to the branch (`git push origin feature/improvement`).  
5. Open a **Pull Request**.  

---

## **📜 License**  
This project is licensed under the **MIT License**. See [LICENSE](LICENSE) for details.  

---

## **🔗 Useful Links**  
- [Verilog HDL Basics](https://www.chipverify.com/verilog/)  
- [Multiplexer Theory](https://www.electronics-tutorials.ws/combination/comb_2.html)  
- [Icarus Verilog Documentation](http://iverilog.wikia.com/)  

---

**🌟 Happy Coding!** 🚀
