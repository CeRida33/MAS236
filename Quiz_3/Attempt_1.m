%% task 1 solution
% read of table 15.2 or use the code below
clc;clear;
%Bolt Tensile Area calculations

d = 22;  %bolt major diameter in mm
p = 1.5; %thread pitch in mm
N = 28;  %threads per inch

%comment out the unused dp/dr calculations

dp = d - (0.649519 * p); %pitch diameter calculation ISO
dr = d - (1.226869 * p); %Minor diameter calculation ISO

%dp = d - (0.649519 * N); %pitch diameter calculation UNS
%dr = d - (1.299038 * N); %Minor diameter calculation UNS

%bolt tension area in mm2
At = (pi/4)*((dp+dr)/2)^2;

fprintf('bolt tensile area is: %.2f mm2\n', At);

%% task 3 figure 1 solution
clear; clc; close all;

d = 27; %mm
E_b = 210; %GPa
E_m = 145; %GPa
l1 = 36; %mm
l2 = 24; %mm

L = l1+l2;
%m 36 dermed er d 36 mm
j = d/L
r =E_m/E_b;

%verdiene for p er hentet fra table 15.8 for verdien av r
p_0 = 0.7351; 
p_1 = -1.2612;
p_2 = 1.1111;
p_3 = -0.3779;

Cr = p_3*r^3+p_2*r^2+p_1*r+p_0
