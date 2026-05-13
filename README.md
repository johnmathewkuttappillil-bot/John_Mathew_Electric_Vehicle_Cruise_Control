# John_Mathew_Electric_Vehicle_Cruise_Control
Overview
This project designs a Cruise Control System for an Electric Vehicle using a PI Controller in MATLAB.

The controller maintains a constant vehicle speed even when disturbances such as road slope changes occur.

---

Problem Statement:
Design a cruise control system to maintain constant vehicle speed under varying road conditions.

Vehicle Model:
G(s) = 1 / (5s + 1)

Disturbance:
Road slope is introduced at t = 10 seconds.

Objectives
Maintain constant vehicle speed
Steady-state error less than 2%
Overshoot less than 5%
Smooth transient response
Stable operation under disturbance

Controller Used:
PI Controller
C(s) = Kp + Ki/s

Where:
- Kp = 2
- Ki = 0.5

Working Principle
1. The vehicle speed is controlled using feedback control.
2. The PI controller continuously checks the error between desired and actual speed.
3. If disturbance occurs, the controller adjusts throttle automatically.
4. The vehicle speed returns to desired value smoothly.

 Results

The controller successfully:
- Maintains stable speed
- Reduces steady-state error
- Provides smooth response
- Rejects disturbances effectively

## Software Used

- MATLAB
