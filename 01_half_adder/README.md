# 🔢 Half Adder – Verilog HDL Project

This project implements a **Half Adder** circuit in Verilog using both **Gate-Level Modeling** and **Behavioral Modeling**. A **common testbench** is used to validate both implementations and generate simulation results viewable in **GTKWave**.



## 📁 Project Structure

| File Name                   | Description                                            |
|-----------------------------|--------------------------------------------------------|
| `half_adder_gatelevel.v`    | Gate-level implementation using `xor` and `and` gates  |
| `half_adder_behavioural.v`  | Behavioral implementation using `assign` statements    |
| `half_adder_test_bench.v`   | Common testbench to simulate both models               |
| `half_adder.vcd`            | Waveform dump filegenerated from simulation            |
| `waveform.png` *(optional)* | Screenshot of GTKWave output for visualization         |



## 🎯 Objective

- Understand the difference between gate-level and behavioral modeling.
- Learn how to write a testbench in Verilog.
- Simulate Verilog designs using **Icarus Verilog** and view outputs in **GTKWave**.



## 🛠️ How to Run

1. **Install Tools**  
   - Icarus Verilog: [https://steveicarus.github.io/iverilog/](https://steveicarus.github.io/iverilog/)  
   - GTKWave: [http://gtkwave.sourceforge.net/](http://gtkwave.sourceforge.net/)

2. **Compile the files**  
   Make sure you're in the same directory where the `.v` files are saved.

   ```bash
   iverilog -o half_adder_tb half_adder_gatelevel.v half_adder_behavioural.v testbench.v



🧪 Simulation Interpretation (GTKWave Output):

The waveform generated using GTKWave visualizes the behavior of both gate-level and behavioral implementations of the half adder. The simulation covers all possible input combinations of a 1-bit half adder: (x, y) = (0,0), (0,1), (1,0), (1,1).

✅ Correctness Check:
The waveform confirms that:

The inputs x and y change every 10 time units.

Both implementations (sum_gate/carry_gate and sum_behav/carry_behav) are functionally correct.

Outputs match expected half adder logic for all input combinations.

Time (sec)	x	y	Sum (Expected)	Carry (Expected)
0	        0	0	       0	           0
10	        0	1	       1	           0
20	        1	0	       1	           0
30	        1	1	       0	           1

📈 Interpreting the Waveform:
x and y: Change every 10 simulation units (#10 delay in testbench loop).

sum_gate, carry_gate: Outputs from the gate-level half adder.

sum_behav, carry_behav: Outputs from the behavioral half adder.

Both implementations show identical results, validating correctness.
