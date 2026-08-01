# 🚦 Traffic Light Controller using Verilog HDL

A **Moore Finite State Machine (FSM)** based **Two-Way Traffic Light Controller** designed in **Verilog HDL**. The controller manages traffic flow between two roads (Road A and Road B) using synchronized **Green**, **Yellow**, and **Red** signals with configurable timing intervals.

The complete design was **functionally verified using a self-checking testbench**, synthesized using **Xilinx Vivado**, and validated through RTL and synthesized schematics.

---

# 📌 Features

- Moore FSM Architecture
- Fully Synchronous Design
- Two-Way Traffic Control
- Enable Controlled Operation
- Active High Reset
- Timer-Based State Transition
- Self-Checking Verification Environment
- RTL & Synthesized Hardware Validation
- Synthesizable Verilog HDL Design

---

# ⚙️ Design Specifications

| Parameter | Value |
|-----------|-------|
| FSM Type | Moore FSM |
| Roads | 2 (Road A & Road B) |
| Green Duration | 30 Clock Cycles |
| Yellow Duration | 5 Clock Cycles |
| Red Duration | Automatically Active During Opposite Green/Yellow |
| Reset | Active High |
| Enable | Active High |
| Clock | Positive Edge Triggered |

---

# 🔄 State Transition Diagram

The controller cycles continuously through the following sequence:

```
GREEN_A
   │
   ▼
YELLOW_A
   │
   ▼
GREEN_B
   │
   ▼
YELLOW_B
   │
   ▼
GREEN_A
```

---

# 🏗 Project Architecture

```
Traffic-Light-Controller/
│
├── RTL/
│   └── traffic_light_controller.v
│
├── Testbench/
│   └── traffic_light_controller_tb.v
│
├── Images/
│   ├── state_diagram.png
│   ├── rtl_schematic.png
│   ├── synthesized_schematic.png
│   └── waveform.png
│
├── README.md
├── LICENSE
└── .gitignore
```

---

# 🖥 RTL Schematic

<p align="center">
<img src="Images/rtl_schematic.png" width="900">
</p>

---

# 🔧 Synthesized Schematic

<p align="center">
<img src="Images/synthesized_schematic.png" width="900">
</p>

---

# 📈 Simulation Waveform

<p align="center">
<img src="Images/waveform.png" width="900">
</p>

---

# 🧪 Verification Methodology

A modular **self-checking testbench** was developed to validate the functionality of the controller.

### Verification Included

- Reset Verification
- Enable Verification
- Green State Timing Verification
- Yellow State Timing Verification
- Complete FSM Cycle Verification
- Automatic Pass/Fail Checking

### Verification Summary

| Item | Result |
|------|--------|
| Total Tests | 69 |
| Passed | 69 |
| Failed | 0 |

✅ **All test cases passed successfully.**

---

# 🛠 Development Tools

| Tool | Purpose |
|------|---------|
| Verilog HDL | RTL Design |
| Visual Studio Code | Code Development |
| Icarus Verilog | Simulation |
| GTKWave | Waveform Analysis |
| Xilinx Vivado | RTL Elaboration & Synthesis |
| Git & GitHub | Version Control |

---

# 🚀 Future Improvements

- Pedestrian Crossing Support
- Emergency Vehicle Priority
- Adaptive Traffic Control using Sensors
- Traffic Density Based Timing
- FPGA Hardware Implementation
- Configurable Timing through Parameters

---

# 📚 Learning Outcomes

This project demonstrates:

- Finite State Machine (FSM) Design
- Moore FSM Implementation
- Sequential Circuit Design
- Timer-Based Control Logic
- RTL Coding Practices
- Self-Checking Testbench Development
- Functional Verification
- RTL Analysis
- Logic Synthesis using Vivado
- Hardware-Oriented Digital Design

---

# 👨‍💻 Author

**Shubham Pithava**

Electronics & Communication Engineering Student

Interested in:
- RTL Design
- Digital Design
- FPGA Design
- ASIC Design
- VLSI

---

## ⭐ If you found this project helpful, consider giving it a Star!