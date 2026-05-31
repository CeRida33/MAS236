% Task 2
clc; clear;

Sy = 355; % MPa
P_1 = 6000; % N
P_2 = 0; % N
M = -210; % Nm
L_1 = 16; % mm
L_2 = 135; % mm
L_3 = 60; % mm
a = 12; % mm

% Welding Areal
A_w = 2*a*L_3; % mm^2


%%%% Finding stress for P2 %%%%
sigma_wP2 = P_2/(A_w);

% Decompose the stress for welding 1:
sigma_90_P2_1 = -sigma_wP2*sind(45);
tau_90_P2_1 = sigma_wP2*sind(45);

% Decompose the stress for welding 1:
sigma_90_P2_2 = -sigma_wP2*sind(45);
tau_90_P2_2 = -sigma_wP2*sind(45);


%%%% Finding stress for P1 %%%%
sigma_P1 = P_1/A_w;

%Decompose the stress for welding 1
sigma_90_P1_1 = -sigma_P1*sind(45);
tau_90_P1_1 = -sigma_P1*sind(45);

%Decompose the stress for welding 1
sigma_90_P1_2 = sigma_P1*sind(45);
tau_90_P1_2 = -sigma_P1*sind(45);


%%%% Finding the moment %%%%
M_1 = P_1*L_2 + M*10^3; % Nm
% inertia of y
I_y = (((2*a+L_1)^3-L_1^3)*L_3)/12;
x = (L_1+a)/2;
sigma_M = (M_1*x)/I_y;

% decompose
sigma_90_M_1 = -sigma_M*sind(45);
tau_90_M_1 = sigma_M*sind(45);

% decompose
sigma_90_M_2 = sigma_M*sind(45);
tau_90_M_2 = sigma_M*sind(45);

%%%% Finding for weld 1 %%%%
tau_1 = abs(tau_90_P1_1 + tau_90_P2_1 + tau_90_M_1);
sigma_1 = abs(sigma_90_P1_1 + sigma_90_P2_1 + sigma_90_M_1);

%%%% Finding for weld 2 %%%%
tau_2 = abs(tau_90_P1_2 + tau_90_P2_2 + tau_90_M_2);
sigma_2 = abs(sigma_90_P1_2 + sigma_90_P2_2 + sigma_90_M_2);

% Choose the lowest number :D
N_1 = Sy/(sqrt(sigma_1^2+3*tau_1^2))
N_2 = Sy/(sqrt(sigma_2^2+3*tau_2^2))