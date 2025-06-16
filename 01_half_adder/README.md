

🔢 Half Adder – Verilog HDL Project
This project demonstrates a **Half Adder** implemented in Verilog using both **Gate-Level Modeling** and **Behavioral Modeling**. A unified testbench is used to simulate both implementations and generate a VCD waveform, which can be visualized using **GTKWave**.

📁 Project Structure
| File Name                   | Description                                                      |
| --------------------------- | ---------------------------------------------------------------- |
| `half_adder_gatelevel.v`    | Gate-level implementation using basic logic gates (`xor`, `and`) |
| `half_adder_behavioural.v`  | Behavioral implementation using `assign` statements              |
| `testbench.v`               | Common testbench to simulate both models                         |
| `half_adder.vcd`            | Waveform dump file generated from simulation                     |
| `waveform.png` *(optional)* | Screenshot of GTKWave output for visual verification             |


 🎯 Objectives
* Understand the difference between **gate-level** and **behavioral** modeling in Verilog.
* Learn how to write a **testbench** to verify hardware modules.
* Use **Icarus Verilog** for simulation and **GTKWave** for waveform visualization.


🛠️ How to Run

🔧 Prerequisites

Install the following tools:

* [Icarus Verilog](https://steveicarus.github.io/iverilog/)
* [GTKWave](http://gtkwave.sourceforge.net/)


▶️ Compilation & Simulation
Open terminal in the project directory and run:
"iverilog -o half_adder_tb half_adder_gatelevel.v half_adder_behavioural.v testbench.v
vvp half_adder_tb
gtkwave half_adder.vcd"


🧪 Simulation Output – GTKWave Interpretation

The waveform generated with GTKWave illustrates the behavior of both implementations under all possible input combinations:

| Time (ns) | x | y | Sum (Expected) | Carry (Expected) |
| --------- | - | - | -------------- | ---------------- |
| 0         | 0 | 0 | 0              | 0                |
| 10        | 0 | 1 | 1              | 0                |
| 20        | 1 | 0 | 1              | 0                |
| 30        | 1 | 1 | 0              | 1                |


✅ Correctness Check:

`x` and `y` change every 10 time units (as per `#10` delay in testbench).
Outputs from both implementations:
`sum_gate`, `carry_gate`
`sum_behav`, `carry_behav`
All outputs **match the expected half adder logic, confirming functional correctness.

📈 Signal Descriptions in Waveform

* `x`, `y`**: Inputs to the half adder.
* `sum_gate`, `carry_gate`: Outputs from 'gate-level' implementation.
* `sum_behav`, `carry_behav`: Outputs from 'behavioral' implementation.
* Both models yield identical results.

