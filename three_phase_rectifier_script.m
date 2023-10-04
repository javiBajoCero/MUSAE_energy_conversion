clc;
close all;
clear;


Vrms_source=480;%vrms
Vpeak=Vrms_source*sqrt(2);%vpeak
source_freq=50;%Hz
source_phase_shiftA=0;%%degrees
source_phase_shiftB=120;%%degrees
source_phase_shiftC=240;%%degrees

R1=25;%ohms
L1=50e-3;%Henrios

simtime=0.1;%seconds
number_of_harmonics=30;
out = sim('three_phase_rectifier_simulation',simtime);