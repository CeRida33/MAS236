%% Task 1
clear; clc; close all;

%Geometric stress concentration factor. 
% Compute the geometric stress concentration factor for the detail 
% shown in Figure 08 with the dimensions:

D = 56; %mm
d = 39; %mm
r = 5.2; %mm

D_d = D/d; % 1.4359
r_d = r/d; % 0.1333

A_p = 1.13260;
b_p = -0.36592;

K_t = A_p*(r_d)^b_p

%% Task 2
clear; clc; close all;

%Correction of the uncorrected fatigue strength. 
% Compute the correction factor C_size for a 
% detail with a round cross section as shown in Figure 15. 
% The detail is exposed to non-rotating bending.

d = 239; %mm

C_size = 1.189 * d^(-0.097)

%% Task 3
clear; clc; close all;

%Static design. 
% A beam is loaded as shown in Figure 21. 
% The dimensions are: L_1 = 500mm, L_2 = 275mm, D = 36mm. 
% The beam is loaded with M = -900Nm, 
% and it is made of the material SAE/AISI 1035 hot rolled. 
% Compute the safety factor against static failure in point A 
% (yielding or fracture which ever is relevant).

L_1 = 500; %mm
L_2 = 275; %mm
L = L_1 - L_2; %mm
D = 36; %mm
M = -900*10^3; %Nmm
r = D/2; %mm

S_y = 276; %MPa
S_ut = 496; %MPa
% 18% > 5% (yielding material)

I_z = (pi*r^4)/4;

sigma_xm = (M*r)/I_z;

sigma_x = sigma_xm; %MPa
sigma_y = 0; %MPa
sigma_z = 0; %MPa
teta_xy = 0; %MPa
teta_yz = 0; %MPa
teta_zx = 0; %MPa

%using von misses stress theorem to get average stress in the area
 sigma_avg = sqrt((((sigma_x - sigma_y)^2)+((sigma_y-sigma_z)^2)+((sigma_z-sigma_x)^2)+(6*((teta_xy^2)+(teta_yz^2)+(teta_zx^2))))/2);

 N = S_y/sigma_avg;





