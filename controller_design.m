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

% Open Loop System
OL = C*G;

% Closed Loop System
CL = feedback(OL,1);

% Display Transfer Functions
disp('Plant Transfer Function:')
G

disp('PI Controller:')
C

disp('Closed Loop Transfer Function:')
CL

% Root Locus
figure;
rlocus(OL);

title('Root Locus of Open Loop System');
grid on;

% Bode Plot
figure;
bode(OL);

title('Bode Plot of Open Loop System');
grid on;