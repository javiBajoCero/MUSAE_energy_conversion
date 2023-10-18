clc;
close all;
clear;

Rload=1;    %[Ohm]
Lload=0.1;  %[H]
VDC=7000;   %[W]
Vgrid=6000; %[Vrms]
gridfreq=50;%Hz

sim_time=1;

alpha_steptime1=0.4;%seconds
alpha1=20;
alpha_steptime2=0.8;%seconds
alpha2=50;

out=sim("controled_three_phase_rectifier.slx");
