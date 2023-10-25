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

continuous_mode_max_alpha=atan(2*pi*gridfreq*Lload/Rload);
continuous_mode_max_alpha=continuous_mode_max_alpha*180/pi;

limited_by_dc_source_alpha=asen(VDC/Vgrid);
limited_by_dc_source_alpha=limited_by_dc_source_alpha*180/pi;

out=sim("controled_three_phase_rectifier.slx");
