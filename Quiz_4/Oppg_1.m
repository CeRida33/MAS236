clear; clc;
% figure 11-23 page 702
%p 732 in digital book

%Bearing 6314

Fr = 11000; %lb
Fa = 3300; %lb

% The inner ring rotates during service.
%Compute the L10 life for a bearing with reliability of 97%
%The answer is to be given in 10^6 revolutions.

%page 701 table 11-5
K_r = 0.62;

%Variable C and C0 is found in table 11-23 s. 702
%p 732 in digital book
C = 14000; %lb
C0 = 10800; %lb


x = Fa/C0
%Variables X, V and Y can be found in figure 11-24 s. 705 
% p.735 in digitalbook

% V = 1 if inner ring is rotating 
% V = 1.2 if inner ring is stationary
V = 1.2;

low_fa_c0 = 0.28;
high_fa_c0 = 0.42;

e_low = 0.38;
e_high = 0.42;

e =  e_low + (e_high-e_low)/(high_fa_c0-low_fa_c0)*(x-low_fa_c0);

single_row_bearings = Fa/(V*Fr);

if e >= single_row_bearings
    %Variables X, V and Y can be found in figure 11-24 s. 705 
    % p.735 in digitalbook
    X = 1;
    Y = 0;

    P = X*V*Fr + Y*Fa;


    %bruk formel for Lp og rolling bearings s. 701
    L10 = ((C/P)^(3));

    Lp = K_r*L10
else
 
    X = 0.56;
    Y_low = 1.15;
    Y_high = 1.04;

    Y = Y_low + (Y_high-Y_low)/(high_fa_c0-low_fa_c0)*(x-low_fa_c0);

    P = X*V*Fr + Y*Fa;


    %bruk formel for Lp og rolling bearings s. 701
    L10 = ((C/P)^(3));

    Lp = K_r*L10

end    





