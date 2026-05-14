clc;
clear;
close all;

% Define Laplace Variable
s = tf('s');

% Vehicle Model
G = 1/(5*s + 1);

% PI Controller Parameters
Kp = 2;
Ki = 0.5;

% PI Controller
C = Kp + Ki/s;

% Closed Loop System
T = feedback(C*G,1);

% Time Vector
t = 0:0.01:30;

% Reference Input
u = ones(size(t));

% Disturbance Signal
d = zeros(size(t));

% Disturbance Applied at t = 10 seconds
d(t >= 10) = -0.2;

% Total Input
input_signal = u + d;

% Simulate System Response
[y,t] = lsim(T,input_signal,t);

% Plot Response
figure;
plot(t,y,'LineWidth',2);

grid on;

xlabel('Time (seconds)');
ylabel('Vehicle Speed');

title('Response with Disturbance');

% Reference Line
hold on;
plot(t,ones(size(t)),'--');

legend('Vehicle Speed','Reference Speed');