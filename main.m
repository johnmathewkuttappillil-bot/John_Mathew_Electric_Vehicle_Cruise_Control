clc;
clear;
close all;

% Transfer Function Variable
s = tf('s');

% Vehicle Transfer Function
G = 1/(5*s + 1);

disp('Vehicle Transfer Function:')
G

% PI Controller Parameters
Kp = 2;
Ki = 0.5;

% PI Controller
C = Kp + Ki/s;

disp('PI Controller:')
C

% Closed Loop System
T = feedback(C*G,1);

disp('Closed Loop Transfer Function:')
T

% Step Response
figure;
step(T);

grid on;

title('Closed Loop Step Response');
xlabel('Time (seconds)');
ylabel('Vehicle Speed');

% Performance Metrics
info = stepinfo(T);

disp('Performance Metrics:')
disp(info);