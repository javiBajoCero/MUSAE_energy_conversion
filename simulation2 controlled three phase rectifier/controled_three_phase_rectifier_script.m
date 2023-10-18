clc;
close all;
clear;

Rload=1;    %[Ohm]
Lload=0.1;  %[H]
VDC=7000;   %[W]
Vgrid=6000; %[Vrms]
gridfreq=50;%Hz

sim_time=1;

alpha_steptime=0.4;%seconds
alpha=20;

out=sim("controled_three_phase_rectifier.slx");
