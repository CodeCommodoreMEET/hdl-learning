
# 🔁 SR Flip-Flop (Set-Reset Flip-Flop)

## 📘 Description

The SR Flip-Flop is one of the simplest types of bistable circuits (memory elements). It stores **1 bit** of information and operates under the influence of a **clock signal**. The outputs change state only at the **positive edge of the clock**, based on the `S` (Set) and `R` (Reset) inputs.

---

## 🧠 Theoretical Background

### 🔹 Inputs:
- `S` – Set
- `R` – Reset
- `CLK` – Clock signal

### 🔹 Outputs:
- `Q` – Current state
- `Q̅` – Complement of current state

### 🔹 Truth Table:

| CLK (↑) | S | R | Q(next) | Description       |
|---------|---|---|---------|-------------------|
| 1       | 0 | 0 | Q       | No Change (Hold)  |
| 1       | 0 | 1 | 0       | Reset             |
| 1       | 1 | 0 | 1       | Set               |
| 1       | 1 | 1 | Invalid | Invalid condition |

> **Important Note:** When `S=1` and `R=1`, both Set and Reset are active, leading to an **undefined or invalid** state. This is a **limitation** of the SR Flip-Flop.

---

## 🧪 Simulation Details

### ✅ Testbench Actions:
- Applies all 4 combinations of inputs `(S, R)`
- Triggers a **positive clock edge** for each test case using a `pulse_clk` task
- Generates a `.vcd` file for GTKWave visualization

### 🔧 Clock Pulsing Logic (in testbench):
```verilog
task pulse_clk;
begin
    #10 clk = 1;
    #10 clk = 0;
end
endtask
````

### 🧾 Observations from Waveform:

* For `S=0, R=0`: `Q` holds previous state
* For `S=1, R=0`: `Q` is set to 1
* For `S=0, R=1`: `Q` is reset to 0
* For `S=1, R=1`: `Q` and `Q̅` go undefined (conflict)

---

## 📁 Project Directory Structure

```
15_SR_Flip_Flop/
├── SR_Flip_Flop.v         # Behavioral Verilog design
├── testbench.v            # Testbench for input simulation
├── SR_Flip_Flop.vcd       # Waveform output after simulation
├── images/
│   └── waveform.png       # GTKWave screenshot of results
└── README.md              # Project documentation
```

---

## 🛠️ Tools Used

* **Icarus Verilog (iverilog)** – Simulation
* **GTKWave** – Waveform analysis

---

## 🔗 Author Info

* 👤 [Meet Hodar](https://www.linkedin.com/in/hodar-meet-2200b1284)
* 📧 [hodarmeet99010@gmail.com](mailto:hodarmeet99010@gmail.com)

