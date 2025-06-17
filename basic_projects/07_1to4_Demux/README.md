# **1-to-4 Demultiplexer (DEMUX) - Verilog Implementation**  

## **🚀 Project Overview**  
This repository presents a **1-to-4 Demultiplexer** implemented in Verilog HDL using two distinct approaches:  
- **🔧 Gate-Level Structural Design**  
- **🧠 Behavioral Modeling**  

The design includes comprehensive verification through a testbench with **100% input coverage**, plus waveform analysis.  

---

## **🔍 Core Concepts**  

### **📡 What is a 1-to-4 DEMUX?**  
A demultiplexer routes **one input signal** to **one of four outputs** based on **2 select lines**:  

| **Enable** | **Select (S1 S0)** | **Active Output** |
|------------|--------------------|-------------------|
| 0          | X X                | None (All 0)      |
| 1          | 0 0                | Y0 = D            |
| 1          | 0 1                | Y1 = D            |
| 1          | 1 0                | Y2 = D            |
| 1          | 1 1                | Y3 = D            |

---

## **🎨 Design Architecture**  

### **1. Structural Design (Gate-Level)**  
**Key Components:**  
- **4 AND gates** (One per output)  
- **2 NOT gates** (For select line inversion)  
- **Enable logic** (Global output control)  

**Logic Snippet:**  
```verilog
and(Y0, ~S1, ~S0, D, E);  // Y0 = D when S1=0,S0=0
and(Y1, ~S1,  S0, D, E);  // Y1 = D when S1=0,S0=1
// ... (Similar for Y2, Y3)
```

### **2. Behavioral Design**  
**Implementation Highlights:**  
- Uses **`case` statement** for clean output selection  
- More scalable for larger demultiplexers  

**Behavioral Logic:**  
```verilog
case({S1,S0})
  2'b00: Y0 = D;
  2'b01: Y1 = D;
  // ... (Other cases)
endcase
```

---

## **🧪 Verification Strategy**  

### **Testbench Features**  
- **Exhaustive input testing** (All 16 possible combinations)  
- **Automatic result comparison** between both implementations  
- **Error reporting** for mismatches  

**Simulation Metrics:**  
✅ 100% input space coverage  
✅ Gate-level vs behavioral output matching  
✅ Enable/disable functionality verified  

---

## **📊 Performance Analysis**  

### **Implementation Comparison**  
| **Metric**       | **Gate-Level** | **Behavioral** |
|------------------|----------------|----------------|
| Code Complexity  | High           | Low            |
| Scalability      | Limited        | Excellent      |
| Simulation Speed | Faster         | Slightly slower|
| Readability      | Low            | High           |

---

## **🛠️ Toolchain Setup**  

### **Simulation Steps**  
1. **Compile:**  
   ```bash
   iverilog -o demux_tb testbench.v demux_1to4_*.v
   ```
2. **Run:**  
   ```bash
   vvp demux_tb
   ```
3. **View Waves:**  
   ```bash
   gtkwave demux_waves.vcd
   ```

---

## **🌐 Applications**  
This DEMUX can be used in:  
- Memory address decoding  
- Communication systems  
- Data routing in processors  



---

## **💡 Learning Resources**  
- [Digital Design Fundamentals](https://example.com/digital-design)  
- [Verilog Best Practices](https://example.com/verilog-guide)  
- [Demux Applications](https://example.com/demux-uses)  
