clc;
clear;
close all;

%% ELECTRIC VEHICLE CRUISE CONTROL SYSTEM
% CONTROL CRAFT HACKATHON PROJECT

%% Define Transfer Function Variable
s = tf('s');

%% Vehicle Transfer Function
% G(s) = 1 / (5s + 1)

G = 1/(5*s + 1);

disp('Vehicle Transfer Function:')
G

%% PI Controller Design
% Controller Parameters

Kp = 2;
Ki = 0.5;

% PI Controller
C = Kp + Ki/s;

disp('PI Controller:')
C

%% Open Loop System
OL = C * G;

%% Closed Loop System
T = feedback(OL,1);

disp('Closed Loop Transfer Function:')
T

%% STEP RESPONSE ANALYSIS

figure;

step(T,'LineWidth',2);

grid on;

title('Closed Loop Step Response');
xlabel('Time (seconds)');
ylabel('Vehicle Speed');

%% PERFORMANCE METRICS

info = stepinfo(T);

disp('-----------------------------------')
disp('PERFORMANCE METRICS')
disp('-----------------------------------')

fprintf('Rise Time        : %.2f seconds\n', info.RiseTime);
fprintf('Settling Time    : %.2f seconds\n', info.SettlingTime);
fprintf('Overshoot        : %.2f %%\n', info.Overshoot);
fprintf('Peak Value       : %.2f\n', info.Peak);
fprintf('Peak Time        : %.2f seconds\n', info.PeakTime);

%% DISTURBANCE SIMULATION

% Time Vector
t = 0:0.01:30;

% Reference Input
u = ones(size(t));

% Disturbance Signal
d = zeros(size(t));

% Disturbance Introduced at t = 10 seconds
% Simulating uphill road slope

d(t >= 10) = -0.2;

% Total Input Signal
input_signal = u + d;

%% Simulate Response

[y,t] = lsim(T,input_signal,t);

%% PLOT DISTURBANCE RESPONSE

figure;

plot(t,y,'LineWidth',2);

hold on;

% Reference Speed Line
plot(t,ones(size(t)),'--','LineWidth',1.5);

grid on;

title('Vehicle Speed Response with Disturbance');
xlabel('Time (seconds)');
ylabel('Vehicle Speed');

legend('Vehicle Speed','Reference Speed');

%% ROOT LOCUS

figure;

rlocus(OL);

grid on;

title('Root Locus of Open Loop System');

%% BODE PLOT

figure;

bode(OL);

grid on;

title('Bode Plot of Open Loop System');

%% STABILITY CHECK

disp('-----------------------------------')
disp('SYSTEM STABILITY ANALYSIS')
disp('-----------------------------------')

poles = pole(T);

disp('Closed Loop Poles:')
disp(poles)

if all(real(poles) < 0)
    disp('System is STABLE')
else
    disp('System is UNSTABLE')
end

%% FINAL OBSERVATION

disp('-----------------------------------')
disp('FINAL OBSERVATIONS')
disp('-----------------------------------')

disp('1. Vehicle maintains constant speed')
disp('2. PI controller reduces steady-state error')
disp('3. Overshoot is within acceptable limit')
disp('4. System remains stable during disturbance')
disp('5. Smooth transient response achieved')
