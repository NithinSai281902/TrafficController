# 🚦 Traffic Light Controller (Verilog)

## 📌 Overview

This project implements a **Traffic Light Controller** using **Verilog HDL**.
It simulates traffic signal behavior for multiple roads with proper timing and sequencing.

The design is verified using a **testbench** and can be extended for FPGA implementation.

---

## ⚙️ Features

* 🚥 Controls multiple traffic signals (M1, M2, MT, S)
* ⏱️ Synchronous design using clock and reset
* 🔁 Cyclic state transitions (Red → Yellow → Green)
* 🧪 Fully testable using simulation
* 🧩 Modular Verilog design

---

## 🗂️ Project Structure

```
TrafficController/
│
├── trafficcontroller_module.v     # Main design (DUT)
├── trafficcontroller_testbench.v  # Testbench for simulation
└── README.md                      # Project documentation
```

---

## 🧠 Working Principle

* The controller operates based on a **finite state machine (FSM)**.
* Each road gets a **green signal** for a fixed duration.
* Other roads remain **red** or **yellow** depending on transition phase.
* Clock drives the transitions, while reset initializes the system.

---

## 🧪 Simulation Details

* Clock period: **10 ns**
* Reset applied at start
* Outputs monitored using `$monitor`

Example:

```
Time=0   M1=... M2=... MT=... S=...
```

---

## ▶️ How to Run

### Using ModelSim / QuestaSim

```
vlog trafficcontroller_module.v
vlog trafficcontroller_testbench.v
vsim Traffic_testbench
run -all
```

### Using Icarus Verilog

```
iverilog -o traffic trafficcontroller_module.v trafficcontroller_testbench.v
vvp traffic
```

---

## 📊 Expected Output

* Traffic lights change in a fixed sequence
* No two conflicting signals are green at the same time
* Proper reset behavior at start

---

## 🚀 Future Improvements

* ⏳ Add configurable timing delays
* 🚗 Sensor-based adaptive traffic control
* 🔌 FPGA implementation (Basys 3 / Vivado)
* 📟 Add pedestrian crossing signals

---

## 👨‍💻 Author

**Nithin Sai**

---

