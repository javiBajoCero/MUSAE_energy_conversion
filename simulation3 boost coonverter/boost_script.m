clc;
close all;
clear;

Vs=100;     % [V]
%L=100e-6;   % [H]
L=160e-6;   % [H] for continuous mode
rL=31e-3;   % [Ohms]
C=10e-6;    % [Farads]
R=100;      % [Ohms]
f=20e3;     % [Hz]
D_volt=0.7; % [V]
duty_cycle=0.7;

sim_time=(1/f)*100;
solver_sample_time=(1/f)/100;   % 100 times niquist
out=sim("boost_simulation.slx");

% %continuous happens from 0.00016 H
% for L=(100e-6):(10e-6):(200e-6)
%     out=sim("boost_simulation.slx");
%     hold on;
%     plot(out.iL,'DisplayName',num2str(L,5));
% end

    