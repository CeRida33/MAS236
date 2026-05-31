%% Oppgave 1 figur 01
clc; clear;
F = 300; % N
a = 400; % mm L_1
l = 700; % mm L_2
x = 700; %finner for punkt B
d = 30; % mm
I = pi*d^4/64;
E = 210;
theta = (F/(2*E*I))*((1-(a/l))*x^2-(x-a)^2 + (a/(3*l))*(-a^2 + 3*a*l - 2*l^2))

%% Oppgave 2
%Figur 7
clc; clear;
nu_1 = 0.33;
nu_2 = 0.33;

r_2_out = 70; % mm
r_2_in = 42; % mm
r_1_out = 42; % mm
r_1_in = 30; % mm (blir 0 ved figur 8)
E1 = 72*10^3; % GPa
E2 = 72*10^3; % GPa

min_toleranse_1 = 0.008;
min_toleranse_2 = -0.006; %NB FORTEGN

r_max = r_1_out + min_toleranse_1;
r_min = r_2_in + min_toleranse_2;

delta_r = r_max - r_min;
delta = 2*delta_r;

% bruker formel side 620 eq 10.14a
P = (0.5*delta)/( ...
    ((r_2_in/E2)*(((r_2_out^2+r_2_in^2)/(r_2_out^2-r_2_in^2))+nu_2))+ ...
    ((r_1_out/E1)*(((r_1_out^2+r_1_in^2)/(r_1_out^2-r_1_in^2))-nu_1)) ...
    )
