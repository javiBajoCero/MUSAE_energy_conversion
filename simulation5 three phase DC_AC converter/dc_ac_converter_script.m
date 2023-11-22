clc;
close all;
clear;

gridfreq=50;        %[Hz]

Ls= 10e-3;          %[H]
XLs=2*pi*gridfreq;  %[?] reactance of the inductor
RLs= XLs/40;        %[Ohms]resistance of the inductor

C=1e-3; %[Farads] , capacitors on DC side

Rd=0.1;%[Ohm] resistance on the DC side

Vspeak_phase_to_ground=1200; %[V], ac side

Carrier_freq_modulation=33*gridfreq;

sim_time=(1/gridfreq)*10;%seconds
solver_sample_time=(1/Carrier_freq_modulation)/10;

Vd=3100;%[V] temporal dc value

modulation=0.8;
out=sim("dc_ac_converter_simulation.slx");