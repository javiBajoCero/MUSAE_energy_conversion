clc;
close all;
clear;

Vs=1000;     % [V]
Rs=1e-3;    % [Ohms]

Lx=50e-6;     % [H]   
R1=1e-3;     % [Ohms]  

Cx=50e-6;               % [F]
C1=5;                   % [F]  
initial_charged_C1=500; % [V]

f=10e3;      % [Hz]

sim_time=0.9;

initialD=0.5;
firstD=0.8;
secondD=0.3;
first_step_time=sim_time/3;
second_step_time=sim_time*2/3;


solver_sample_time=(1/f)/100;   % 100 times niquist

out=sim("bidirectional_DCDC_simulation.slx");