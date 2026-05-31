%% Spørsmål 1

%SAE/AISI 4340 Q&T @800 degrees F
%Bending loading
%endurance limit is: 492.12 MPa
%compute the corrected fatigue strength at 5*10^6 load cycles.


s_y = 1365; %Mpa
s_ut = 1469; %Mpa
S_e = 492.12; %MPa
% 10% > 5% ductile material





%% Spørsmål 2

L1 = 40; %mm
L2 = 25; %mm
L3 = 200; %mm
L4 = 900; %mm
T = 10; %mm
r = 3.5; %mm
p_1 = 4000; %N
M_0 = 20*10^3; %Nm
w = 11; %rad/s
%Compute the stress ratio sigma_a/sigma_m at point C.

M_t = M_0*sin(w*T); %Nmm

A = L2*L3; %mm^2
Iz = 

sigma_x_p = p_1/A
sigma_x_m = (M_t*(L2/2))/

