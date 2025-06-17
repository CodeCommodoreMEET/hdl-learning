# **1-to-2 Demultiplexer (DEMUX) - Verilog Implementation**  

## **📌 Overview**  
This repository contains **Verilog HDL** implementations of a **1-to-2 Demultiplexer (DEMUX)** using:  
1. **Gate-Level Modeling** (Structural Design)  
2. **Behavioral Modeling** (High-Level Abstraction)  

A **testbench** is included to verify the functionality of both implementations, along with simulation waveforms for validation.  

---

## **📝 Table of Contents**  
1. [Introduction](#-introduction)  
2. [Demultiplexer Basics](#-demultiplexer-basics)  
3. [Design Implementations](#-design-implementations)  
4. [Testbench & Simulation](#-testbench--simulation)  
5. [Results & Waveforms](#-results--waveforms)  
6. [How to Run](#-how-to-run)  
7. [Dependencies](#-dependencies)  
8. [Contributing](#-contributing)  
9. [License](#-license)  

---

## **🎯 Introduction**  
A **Demultiplexer (DEMUX)** is a combinational circuit that takes a single input and routes it to one of several output lines based on **select lines**.  

This project demonstrates two different Verilog modeling approaches:  
- **Gate-Level (Structural)**: Implements the DEMUX using basic logic gates (`AND`, `NOT`).  
- **Behavioral (High-Level)**: Uses `if-else` and `case` statements for abstraction.  

A **testbench** verifies both designs by testing all possible input combinations.  

---

## **🔧 Demultiplexer Basics**  
A **1-to-2 DEMUX** has:  
- **1 Input** (`D`)  
- **1 Select Line** (`S`) → \(2^1 = 2\) combinations  
- **2 Outputs** (`Y0`, `Y1`)  
- **1 Enable Signal** (`E`) → Active High  

**Truth Table:**  

| **Enable (E)** | **Select (S)** | **Output Y0** | **Output Y1** |
|----------------|----------------|---------------|---------------|
| 0              | X              | 0             | 0             |
| 1              | 0              | D             | 0             |
| 1              | 1              | 0             | D             |

---

## **💻 Design Implementations**  

### **🔌 Gate-Level DEMUX (Structural Design)**  
- Built using **basic logic gates** (`AND`, `NOT`).  
- **Internal signals** (`S_not`) represent intermediate logic.  

**Block Diagram:**  
```
        +-----+
D ------| AND |---- Y0
        +-----+
          |
S ----[NOT]--[AND]---- Y1
```  

### **⚡ Behavioral DEMUX (High-Level Design)**  
- Uses **`case` statement** for output selection.  
- More **readable** and **scalable** for complex designs.  

**Pseudocode Logic:**  
```verilog
if (E == 1) then
    if (S == 0) Y0 = D, Y1 = 0
    else Y0 = 0, Y1 = D
else
    Y0 = 0, Y1 = 0
```

---

## **🧪 Testbench & Simulation**  
- **Tests all possible input combinations** (8 cases).  
- **Compares outputs** of both DEMUX implementations.  
- Generates **VCD waveform** for analysis.  

**Test Cases Covered:**  
1. **E=0** (DEMUX disabled)  
2. **E=1, S=0** (Input `D` routed to `Y0`)  
3. **E=1, S=1** (Input `D` routed to `Y1`)  

---

## **📊 Results & Waveforms**  
The simulation waveforms confirm that both implementations produce identical outputs.  

### **Key Observations:**  
1. **When `E = 0`**, both outputs (`Y0`, `Y1`) are `0`.  
2. **When `E = 1`**:  
   - `S = 0` → `Y0 = D`, `Y1 = 0`  
   - `S = 1` → `Y0 = 0`, `Y1 = D`  
3. **Both designs match** in functionality.  

---

## **🚀 How to Run**  
### **Simulation Steps:**  
1. **Compile the Verilog files:**  
   ```bash
   iverilog -o demux_1to2_tb testbench.v demux_1to2_gate.v demux_1to2_behavioral.v
   ```  
2. **Run the simulation:**  
   ```bash
   vvp demux_1to2_tb
   ```  
3. **View waveforms (GTKWave):**  
   ```bash
   gtkwave demux_1to2.vcd
   ```  

---

## **📦 Dependencies**  
- **Simulator:** [Icarus Verilog (iverilog)](http://iverilog.icarus.com/)  
- **Waveform Viewer:** [GTKWave](http://gtkwave.sourceforge.net/)  

---

## **🤝 Contributing**  
Contributions are welcome! If you find issues or want to improve:  
1. **Fork** the repository.  
2. Create a **new branch** (`git checkout -b feature/improvement`).  
3. **Commit** changes (`git commit -m "Add feature"`).  
4. **Push** to the branch (`git push origin feature/improvement`).  
5. Open a **Pull Request**.  

---


## **🔗 Useful Links**  
- [Verilog HDL Basics](https://www.chipverify.com/verilog/)  
- [Demultiplexer Theory](https://www.electronics-tutorials.ws/combination/comb_4.html)  
- [Icarus Verilog Documentation](http://iverilog.wikia.com/)  

