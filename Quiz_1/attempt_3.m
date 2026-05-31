%% Task 1
clear; clc; close all;

%Geometric stress concentration factor. 
% Compute the geometric stress concentration factor for the detail 
% shown in Figure 01with the dimensions:
%  D = 56mm, d = 35mm, and r = 5.2mm.

D = 56; %mm
d = 35; %mm
r = 5.2; %mm

D_d = D/d; % 1.5484
r_d = r/d; % 0.1226

A_p = 1.13260;
b_p = -0.36592;

K_t = A_p*(r_d)^b_p

%% Task 2
clear; clc; close all;
%Correction of the uncorrected fatigue strength. 
%Compute the correction factor C_size for a detail with a 
% rectangular cross section as shown in Figure 16. 
% The detail is exposed to non-rotating bending. 
% The dimensions are h = 24mm and b = 49mm
 
h = 24; %mm
b = 49; %mm

A_95 = b*(h-0.95*h);
d_equiv = sqrt(A_95/0.0766);

C_size = 1.189 *d_equiv^(-0.097)

%% Task 3
clear; clc; close all;

%Static design . 
% A beam is loaded as shown in Figure 18. 
% The dimensions are: 
% L_1 = 700mm, L_2 = 75mm, L_3 = 64mm, L_4 = 34mm. 
% The beam is loaded with P = 145kN, 
% and it is made of the material SAE/AISI 1010 cold rolled. 
% Compute the safety factor against static failure in point A 
% (yielding or fracture which ever is relevant).

L_1 = 700; %mm
L_2 = 75; %mm
L_3 = 54; %mm
L_4 = 37; %mm
P = 145*10^3; %N
A = L_3*L_4; %mm^2

S_y = 303; %MPa
S_ut = 365; %MPa
% 20% > 5% (yielding material)


sigma_xp = P/A;

sigma_x = sigma_xp; %MPa
sigma_y = 0; %MPa
sigma_z = 0; %MPa
teta_xy = 0; %MPa
teta_yz = 0; %MPa
teta_zx = 0; %MPa

%using von misses stress theorem to get average stress in the area
 sigma_avg = sqrt((((sigma_x - sigma_y)^2)+((sigma_y-sigma_z)^2)+((sigma_z-sigma_x)^2)+(6*((teta_xy^2)+(teta_yz^2)+(teta_zx^2))))/2);

 N = S_y/sigma_avg