# Electric Vehicle Cruise Control System

## CONTROL CRAFT HACKATHON PROJECT

---

# Overview

This project implements an Electric Vehicle (EV) Cruise Control System using a PI Controller in MATLAB.

The objective of the system is to maintain constant vehicle speed under different road conditions and disturbances.

The system is tested under:

1. Uphill Road Disturbance
2. Speed Breaker / Pothole Disturbance
3. Speed Breaker on Uphill Road Condition

The PI controller automatically adjusts the throttle input and restores vehicle speed whenever disturbances occur.

---

# Problem Statement

Design a cruise control system for an electric vehicle to maintain constant speed under varying road conditions.

Vehicle Dynamics:

G(s) = 1 / (5s + 1)

Disturbances Introduced:
- Uphill road slope
- Speed breaker / pothole
- Speed breaker while moving uphill

---

# Objectives

- Maintain constant vehicle speed
- Reduce steady-state error
- Minimize overshoot
- Provide smooth transient response
- Maintain stable operation under disturbances

---

# Vehicle Model

The electric vehicle is modeled using the transfer function:

G(s) = 1 / (5s + 1)

Where:
- Input  → Throttle Control
- Output → Vehicle Speed

---

# Controller Used

## PI Controller

C(s) = Kp + Ki/s

Controller Parameters:

- Kp = 2
- Ki = 0.5

---

# Disturbances Considered

## 1. Uphill Road Disturbance

- Introduced at t = 10 seconds
- Simulates vehicle climbing an uphill road
- Causes continuous reduction in vehicle speed

Controller Action:
- Detects speed drop
- Increases throttle automatically
- Restores speed smoothly

---

## 2. Speed Breaker / Pothole Disturbance

- Introduced between t = 18s and t = 19s
- Simulates temporary road obstruction
- Causes sudden short-duration speed drop

Controller Action:
- Quickly compensates for disturbance
- Restores vehicle speed

---

## 3. Speed Breaker on Uphill Road

This is a combined disturbance condition where:

- Vehicle is already affected by uphill load
- Additional speed breaker disturbance occurs

This represents a real-world driving condition.

Controller Performance:
- Maintains system stability
- Handles multiple disturbances simultaneously
- Ensures smooth recovery

---

# Software Used

- MATLAB
- Control System Toolbox

---

# Files Included

| File Name | Description |
|------------|-------------|
| main.m | Main MATLAB simulation |
| controller_design.m | PI controller design and stability analysis |
| disturbance_simulation.m | Disturbance response analysis |
| README.md | Project documentation |

---

# Simulation Features

The MATLAB simulation includes:

- Closed loop step response
- Disturbance response analysis
- Root locus analysis
- Bode plot analysis
- Stability verification
- Performance metrics calculation

---

# Performance Metrics

The system is designed to satisfy:

| Parameter | Requirement |
|------------|-------------|
| Steady-State Error | < 2% |
| Overshoot | < 5% |
| Stability | Stable |
| Transient Response | Smooth |

---

# Results

The PI controller successfully:

- Maintains desired vehicle speed
- Rejects uphill disturbance
- Handles pothole / speed breaker disturbance
- Maintains stability during combined disturbances
- Provides smooth and stable response

---

# Root Locus Analysis

The Root Locus plot shows that all system poles remain in the left half-plane.

Result:
- Stable closed-loop system

---



---

# Future Improvements

- PID controller implementation
- Adaptive cruise control
- AI-based controller tuning
- Simulink dashboard visualization
- Real-time hardware implementation using microcontrollers

---

# Conclusion

The Electric Vehicle Cruise Control System successfully demonstrates stable and efficient speed control under multiple road disturbances including uphill roads and speed breakers.

The PI controller effectively compensates for disturbances and ensures smooth vehicle operation.





