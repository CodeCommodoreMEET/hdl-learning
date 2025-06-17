
# 🔁 Parity Generator & Checker – Verilog HDL Project

This project implements a complete **Parity Generation and Error Detection System** using **Verilog HDL**, aimed at simulating how data integrity is ensured during digital communication.

The system is capable of generating both **even** and **odd** parity bits and detecting errors caused by **bit flipping** during transmission. This is a common technique in digital systems and embedded communication protocols to detect single-bit errors in data.

---

## 📂 Folder Structure

```

15\_Parity\_Checker\_Generator/
├── Parity\_Generator\_behav.v        # Behavioral model for parity bit generation
├── Parity\_Checker\_behav.v          # Behavioral model for error detection
├── Parity\_System\_top.v             # Top module connecting generator and checker
├── testbench.v                     # Testbench simulating full system
├── Parity\_System.vcd               # Output waveform for GTKWave
├── README.md                       # Project documentation

```

---

## 🧠 What This Project Demonstrates

### ✅ 1. **Parity Bit Generation**
- The `Parity_Generator` module calculates the parity (even or odd) of a 3-bit input.
- Parity is determined using **bitwise XOR operations**.
- The parity type is configurable using an input signal:
  - `0` → Even parity
  - `1` → Odd parity

### ✅ 2. **Parity Checking / Error Detection**
- The `Parity_Checker` module accepts:
  - Received data (possibly corrupted)
  - The parity bit generated earlier
  - The parity type (even/odd)
- It calculates the expected parity and compares it with the received parity bit.
- If there's a mismatch, an **error flag is raised**.

### ✅ 3. **Top Module (`Parity_System`)**
- Combines the Generator and Checker modules.
- Accepts two sets of 3-bit inputs:
  - One for the generator
  - One for the checker (can be the same or intentionally flipped)
- Shares the parity bit between both.

### ✅ 4. **Testbench Design**
- The testbench:
  - Runs all possible 3-bit input combinations (`0 to 7`)
  - Tests both even and odd parity types
  - Simulates transmission errors by **flipping specific bits** using XOR
  - Displays results for both correct and error conditions

---

## 🛠️ Technical Concepts Used

| Concept                        | Description                                                                 |
|-------------------------------|-----------------------------------------------------------------------------|
| **Bitwise XOR for parity**    | Used to compute parity efficiently (XOR is fundamental for this purpose)   |
| **Conditional parity inversion** | In odd parity mode, output of XOR is inverted                             |
| **Flipping bits via XOR**     | Simulated noise/errors using XOR in testbench: `data ^ 3'b010` flips bit 1 |
| **Top module design**         | Demonstrates modular and hierarchical design structure                     |
| **Waveform analysis**         | `.vcd` dump used for waveform viewing in GTKWave                           |
| **Automated simulation loop** | Loops over all possible 3-bit inputs for exhaustive test coverage          |

---

## 🎯 Educational Value

This project solidifies core digital design concepts like:
- Combinational logic using Verilog
- Parity error detection
- Module instantiation and interconnection
- Writing and interpreting testbenches
- Simulating real-world noise/error conditions
- Clean HDL coding practices

It is also a **great stepping stone for learning more advanced digital systems**, including:
- Hamming codes
- CRC (Cyclic Redundancy Check)
- Error Correction Codes (ECC)
- FPGA-based communication systems

---

## 💡 Key Learnings

- **XOR as a universal parity operator**
- Why **even vs. odd parity types** matter in communication
- How **noise in real systems** can be modeled with testbenches
- How to simulate bit errors manually and programmatically
- The importance of **separating clean and noisy data paths**
- Why using a **top-level module** makes your design scalable and reusable

---

## 🧪 Possible Extensions

If you wish to take this further, you can explore:
- Randomized multi-bit flipping and statistical testing
- 4-bit or 8-bit parity expansion
- Adding support for **parity bit recalculation** inside the checker for data recovery (if error not detected)
- Pipelining the system to simulate time delays
- Porting this design to an FPGA using a board like Basys3 or Nexys A7

---

## 🙌 Author

**Meet Hodar**  
- 📧 Email: hodarmeet99010@gmail.com  
- 🔗 LinkedIn: [linkedin.com/in/hodar-meet-2200b1284](https://www.linkedin.com/in/hodar-meet-2200b1284)

