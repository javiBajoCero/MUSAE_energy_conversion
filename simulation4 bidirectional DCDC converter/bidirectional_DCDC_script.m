clc;
close all;
clear;

Vs=1000;     % [V]
Rs=0.001;    % [Ohms]

Lx=50e-6;     % [H]   
R1=1e-3;     % [Ohms]  

Cx=50-6;                % [F]
C1=5;                   % [F]  
initial_charged_C1=500; % [V]

f=10e3;      % [Hz]

initialD=0.5;


sim_time=(1/f)*10000;
solver_sample_time=(1/f)/100;   % 100 times niquist

out=sim("bidirectional_DCDC_simulation.slx");