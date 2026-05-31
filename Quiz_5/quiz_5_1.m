% task 1:
clc; clear;
format long g
P = -42000; % N
T = 4500*10^3; % Nm
Sy = 355; % MPa
L = 135; % mm
d = 90; % mm
a = 15; % mm

% Polar Inertia of welded circle
r_m = (d+a)/2;
%I_p = 2*pi*r_m^3*a; % mm^4
I_p = pi/32 * ((d+2*a)^4 - d^4);

% (d+a) says the diameter between A and B
tau_0_torsion = (T*r_m)/I_p;
A_w = ((d+2*a)^2-d^2)*pi/4;
tau_0_shear = P/A_w;

% There will be a moment because of P but will 
% not affect point A and B
tau_0_A = abs(tau_0_shear - tau_0_torsion);
tau_0_B = abs(tau_0_shear + tau_0_torsion);

% Choose the smallest value :D
N_A = Sy/(sqrt(3*tau_0_A^2))
N_B = Sy/(sqrt(3*tau_0_B^2))