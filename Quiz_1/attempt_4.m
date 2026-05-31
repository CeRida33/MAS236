%% Task 1
clear; clc; close all;

%Geometric stress concentration factor. 
% Compute the geometric stress concentration factor for the detail 
% shown in Figure 07 with the dimensions:
%  D = 48mm, d = 39mm, and r = 3.8mm.

D = 48; %mm
d = 39; %mm
r = 3.8; %mm

D_d = D/d; %  1.5484
r_d = r/d; %  0.1226

A = 0.94681+((1.23-1.2)*((0.94299-0.94681)/(1.3-1.2)));
b = -0.30582+((1.23-1.2)*((-0.31504-(-0.30582))/(1.3-1.2)));

K_t = A*(r_d)^b

%% Task 2
clear; clc; close all;

%Correction of the uncorrected fatigue strength. 
% Compute the correction factor C_size for a 
% detail with a round cross section as shown in Figure 15. 
% The detail is exposed to rotating bending.

d = 225; %mm
A_95 = pi*abs((d^2-(0.95*d)^2)/4);
d_equiv = sqrt(A_95/0.0766);

C_size = 1.189 *d_equiv^(-0.097)

%% Task 3
clear; clc; close all;

%Static design. 
% A beam is loaded as shown in Figure 21. 
% The dimensions are: L_1 = 500mm, L_2 = 275mm, D = 32mm. 
% The beam is loaded with M = 450Nm, 
% and it is made of the material SAE/AISI 1035 hot rolled. 
% Compute the safety factor against static failure in point A 
% (yielding or fracture which ever is relevant).

L_1 = 500; %mm
L_2 = 275; %mm
L = L_1 - L_2; %mm
D = 32; %mm
M = 450*10^3; %Nmm
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

 N = S_y/sigma_avg





