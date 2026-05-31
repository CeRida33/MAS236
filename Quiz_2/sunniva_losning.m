%% Task 1 Quiz 2
clc; clear; close all;
S_e = 175.54; % Mpa
N = 200000; % 
z = (-3);
s_ut = 524;
S_m = 0.9*s_ut; % for bending er det 0.9 og for axial er det 0.75
b = (1/z)*(log10(S_m/S_e)); % (-1/3) er på grunn av knekkngen. 
% Hvis du får over 1 M cycle så vil det bli det samme som S_e som blir oppgitt

a = S_m/(1000^b); %motsatte av log er 10^svaret %figur 2 og 5 vil svaret bli 1
S_N = a*N^b