
Full Adder – Verilog HDL Project
This project implements a 1-bit Full Adder circuit in Verilog using two different modeling styles:
•	Gate-Level Modeling
•	Behavioral Modeling
Both models are tested using a common testbench and the outputs are visualized using GTKWave.

Folder Structure:
02_full_adder/
•	full_adder_gatelevel.v -> Gate-level implementation using xor, and, or gates
•	full_adder_behaviourlevel.v -> Behavioral implementation using assign statements
•	testbench.v -> Common testbench for both models
•	Full_adder.vcd -> Simulation waveform dump file
•	images/
o	waveform.png -> Screenshot of GTKWave output
o	circuit_diagram.png -> Logic circuit diagram of Full Adder
•	README.md -> This project description

Objective:
•	Understand the working of a 1-bit Full Adder circuit.
•	Learn both gate-level and behavioral Verilog modeling.
•	Simulate designs using Icarus Verilog and visualize using GTKWave.
•	Use a testbench to automate all input combinations.

Full Adder Logic Table:
Inputs Output
x   y   z   Sum   Carry
0   0   0    0     0
0   0   1    1     0
0   1   0    1     0 
0   1   1    0     1
1   0   0    1     0
1   0   1    0     1
1   1   0    0     1
1   1   1    1     1

How to Run the Simulation:

Step 1: Install Icarus Verilog and GTKWave from these links:
•	Icarus Verilog: https://steveicarus.github.io/iverilog/
•	GTKWave: http://gtkwave.sourceforge.net/
Step 2: Make sure all files are in the same folder. Then open terminal in that folder.
Step 3: Compile the Verilog files using this command:
iverilog -o full_adder_tb full_adder_gatelevel.v full_adder_behaviourlevel.v testbench.v
Step 4: Run the simulation:
vvp full_adder_tb
Step 5: View the waveform:
gtkwave Full_adder.vcd
What the Simulation Shows:
•	Inputs x, y, and z (Cin) change from 000 to 111.
•	sum_gate and carry_gate are outputs from the gate-level design.
•	sum_behav and carry_behav are outputs from the behavioral design.
•	The outputs from both match perfectly for all combinations, confirming correct logic.
Images Provided:
•	waveform.png shows how the simulation looks in GTKWave.
•	circuit_diagram.png is the full adder circuit with logic gates.
Key Takeaways:
•	Both modeling styles produce the same results.
•	Testbenches are powerful for automatically testing all inputs.
•	GTKWave is useful for visual debugging and verification.
•	This project is a base for larger arithmetic circuits.
License:
This project uses the MIT License. You can freely use, copy, or modify this project with proper credit.
If you found this helpful, feel free to star the repository or share with others learning Verilog!
________________________________________
Let me know if you'd like a similar version for your Half Adder too!

