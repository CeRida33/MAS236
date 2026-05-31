%% Spørsmål 1
clear; clc; close all;

%SAE/AISI 1030 Q&T @400 degrees F
%Bending loading
%endurance limit is: 284.08 MPa
%compute the corrected fatigue strength at 5*10^6 load cycles.


s_y = 648; %Mpa
s_ut = 848; %Mpa
s_e = 284.08; %MPa
T = 400 %F
% 17% > 5% ductile material

s_m = 0.9*s_ut
c_load = 1;
%c_size =
%c_surf = 
c_temp = 1-0.0032*(T-840);
c_reliab = 0.620;



%% Spørsmål 2
clear; clc; close all;
%figure 2

L1 = 30; %mm
L2 = 25; %mm
L3 = 300; %mm
L4 = 900; %mm
T = 15; %mm
r = 1.6; %mm
p_0 = 280; %N
%M_0 = 20*10^3; %Nm
w = 5; %rad/s
%Compute the stress ratio sigma_a/sigma_m at point C.

A = L1*T; %mm^2


%sigma_x_p = p_1/A
%sigma_x_m = (M_t*(L2/2))/

t = (0:0.0001:1000);
p = p_0*(0.5+(0.5*sin(w*t)));
grid on;
plot(p,t, LineWidth=2)

%Svaret var 1