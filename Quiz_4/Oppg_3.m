clear; clc;
%Figure 2 in the quiz material
%Formula found on page: 1044-1046
p_1 = 100; %N
%p_2 = 250; %N

l_3 = 220; %mm
l_2 = 650; %mm
l_1 = l_2-l_3; %mm

D = 20; %mm

E = 210000; %GPa (Dette gjelder alltid for stål)
I = (pi*D^4)/64;

x = 650;

%Compute the deflection angle in bearing B (with sign). 
% Provide the result in [mrad]

%y_max = (p_1/(6*E*I))*((2*l_1^3)- (l_1^4/l_2)-(l_2*l_1^2))

a = (1-(l_1/l_2))*x^2 - (x-l_1)^2;
b = (l_1/(3*l_2))*(-l_1^2 + (3*l_1*l_2) - (2*l_2^2));
y = (((p_1)/(2*E*I))*(a+b))*1000