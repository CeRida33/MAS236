clear; clc;

S_y = 355; %MPa
P1 = -6000; %N
P2 = 8500; %N
M = 0; %Nm

L1 = 22; %mm [d]
L2 = 140; %mm 
L3 = 60; %mm [b]
a = 10; %mm

%Page 1025 digital book.
centroid_x = L3^2/(2*L3 + L1);
centroid_y = L1^2/(2*L3 + L1);

r = a + L3 -centroid_x;
fs = P1/(2*L3 + L1);

%Safety factor is found in eq. (16.3) p. 1032 in digital book.
