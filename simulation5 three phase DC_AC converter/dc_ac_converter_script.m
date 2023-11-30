clc;
close all;
clear;

gridfreq=50;        %[Hz]
gridfreq_rad=2*pi*gridfreq;        %[rad/s]

Ls= 10e-3;          %[H]
XLs=2*pi*gridfreq;  %[?] reactance of the inductor
RLs= XLs/40;        %[Ohms]resistance of the inductor

C=1e-3; %[Farads] , capacitors on DC side

Rd=0.1;%[Ohm] resistance on the DC side

Vspeak_phase_to_ground=1200; %[V], ac side

Carrier_freq_modulation=33*gridfreq;






sim_time=(1/gridfreq)*2;%seconds
solver_sample_time=(1/Carrier_freq_modulation)/100;

Vd=3010;%[V] temporal dc value

modulation=0.8; %for the pwm, amplitude of voltage output ->reactive power

modulation_angle=0.123; % [radians] for the active power generation

out=sim("dc_ac_converter_simulation.slx");