

# 🔀 JK Flip-Flop

## 📘 Description

The JK Flip-Flop is a widely-used sequential element that eliminates the **invalid state** of the SR Flip-Flop. When both inputs `J` and `K` are high, the output toggles. This makes it more flexible and robust in practical digital systems like counters, shift registers, and FSMs.

---

## 🧠 Theoretical Background

### 🔹 Inputs:
- `J` – Set (like S)
- `K` – Reset (like R)
- `CLK` – Clock input

### 🔹 Outputs:
- `Q` – Current output
- `Q̅` – Complement of Q

### 🔹 Truth Table:

| CLK (↑) | J | K | Q(next) | Description       |
|---------|---|---|---------|-------------------|
| 1       | 0 | 0 | Q       | Hold              |
| 1       | 0 | 1 | 0       | Reset             |
| 1       | 1 | 0 | 1       | Set               |
| 1       | 1 | 1 | ~Q      | **Toggle**        |

> ✅ **Toggle action** solves the invalid state problem in SR Flip-Flop, making JK more versatile.

---

## 🔍 Why JK is Better Than SR

- ✅ Handles `1,1` input condition with toggling logic
- ✅ No undefined or unstable states
- ✅ Suitable for counters and control circuits

---

## 🧪 Simulation Details

### ✅ Testbench Features:
- Applies all 4 possible input combinations of `(J, K)`
- Clock pulsed using `pulse_clk` task
- Outputs observed and stored in `.vcd` file for waveform inspection

### ⚙️ Internal Logic Snippet:
```verilog
always @(posedge clk)
    case({j, k})
        2'b00: q <= q;
        2'b01: q <= 0;
        2'b10: q <= 1;
        2'b11: q <= ~q;
    endcase
````

### 🧾 Observations from Waveform:

* `J=0, K=0` → Q holds value
* `J=1, K=0` → Q becomes 1 (Set)
* `J=0, K=1` → Q becomes 0 (Reset)
* `J=1, K=1` → Q toggles (complement)

---

## 📁 Project Directory Structure

```
16_JK_Flip_Flop/
├── JK_Flip_Flop.v         # Behavioral Verilog design
├── testbench.v            # Testbench for input combinations
├── JK_Flip_Flop.vcd       # VCD file for waveform
├── images/
│   └── waveform.png       # Screenshot showing toggle behavior
└── README.md              # Documentation for the project
```

---

## 🛠️ Tools Used

* **Icarus Verilog** – For compiling and simulating `.v` files
* **GTKWave** – For waveform visualization
* Optionally: **VSCode** or **Sublime Text** for editing

---

## 💡 Note on Design Style

This is a **behavioral model**, meaning:

* We describe **what** the flip-flop does, not **how** it's built.
* Toggling is modeled using internal feedback (`q <= ~q`) — no need for `jq/kq` inputs.

---

## 🔗 Author Info

* 👤 [Meet Hodar](https://www.linkedin.com/in/hodar-meet-2200b1284)
* 📧 [hodarmeet99010@gmail.com](mailto:hodarmeet99010@gmail.com)

```
