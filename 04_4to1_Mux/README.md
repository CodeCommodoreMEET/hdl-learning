Here’s a detailed `README.md` content tailored for your `04_4to1_Mux` Verilog project folder. This includes all key sections: project overview, folder structure, files, waveform, usage, and license.

---

```markdown
# 4-to-1 Multiplexer (Verilog)

This project demonstrates the design and simulation of a **4-to-1 Multiplexer (MUX)** using **Verilog HDL**. It includes both **Gate-Level Modeling** and **Behavioral Modeling**. The output of each implementation is verified using a common testbench, and simulation results are visualized via **GTKWave**.

---

## 📁 Folder Structure

```

04\_4to1\_Mux/
│
├── mux\_4to1\_gatelevel.v       # Gate-level implementation
├── mux\_4to1\_behavioural.v     # Behavioral implementation
├── testbench.v                # Common testbench for both models
├── mux\_4to1.vcd               # Waveform output for GTKWave
├── images/
│   └── waveform.png           # Screenshot of simulation waveform
└── README.md                  # Project documentation

````

---

## 🧠 Project Description

A **4-to-1 MUX** is a combinational circuit that selects one of four input lines using two select lines and an enable signal.

### MUX Truth Table:

| Enable (E) | s1 | s0 | Output (Y) |
|------------|----|----|-------------|
|     0      | X  | X  |      0      |
|     1      | 0  | 0  |     i0      |
|     1      | 0  | 1  |     i1      |
|     1      | 1  | 0  |     i2      |
|     1      | 1  | 1  |     i3      |

---

## 🛠️ Verilog Implementations

### 🔹 1. Gate-Level Design (`mux_4to1_gatelevel.v`)

Constructs the MUX using logic gates (`and`, `or`, `not`) and intermediate wires like `w0`, `w1`, etc.

### 🔹 2. Behavioral Design (`mux_4to1_behavioural.v`)

Implements the MUX using `always @(*)` and a `case` block with if-check for enable (`E`).

---

## 🧪 Testbench

File: `testbench.v`

- Tests all **64 possible combinations** of:
  - 4 input lines: `i0`, `i1`, `i2`, `i3`
  - 2 select lines: `s0`, `s1`
  - Enable line `E`
- Displays both gate-level and behavioral outputs side-by-side for comparison.
- Dumps the simulation to `mux_4to1.vcd` for waveform viewing in GTKWave.

---

## 🔍 Simulation Output

View simulation waveforms with:

```bash
gtkwave mux_4to1.vcd
````

🖼️ Example GTKWave output:
![Waveform Screenshot](images/waveform.png)

---

## ✅ How to Run

1. **Compile**

   ```bash
   iverilog -o mux4_tb testbench.v mux_4to1_gatelevel.v mux_4to1_behavioural.v
   ```

2. **Simulate**

   ```bash
   vvp mux4_tb
   ```

3. **View waveform**

   ```bash
   gtkwave mux_4to1.vcd
   ```

---

## 🔍 Observations

* The gate-level and behavioral models were verified to produce matching outputs.
* The enable signal (`E`) effectively disables output when `E=0`.
* Outputs change as expected with different `s1 s0` values.

---

## 📜 License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT). Feel free to use, modify, and distribute this project with attribution.

---

## 🙋‍♂️ Author

**Hodar Meet \hodarmeet99010@gmail.com**

3rd-year ICT Student | Aspiring VLSI & Semiconductor Engineer
Inspired to build real hardware logic from scratch 🛠️

---

## 🔗 Related Projects

* [Half Adder (Gate & Behavioral)](../01_half_adder)
* [Full Adder (Gate & Behavioral)](../02_full_adder)
* [2:1 Multiplexer](../03_2to1_Mux)

---

> Feel free to fork ⭐ and contribute!
