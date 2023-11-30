clc;
close all;
clear;

L_buck=4e-3;%[H]
R_l_buck=1e-3;%[Ohms]

C1=50e-6;%[Farads]

C2=20e-6;%[Farads]
R_load=200;%[Ohms]

Vgrid_line_line=480;%vrms
Vgrid_peak=Vgrid_line_line*sqrt(2);%vpeak

grid_freq=50;%Hz
grid_period=1/grid_freq;%[s]

L_grid=100e-3;%[H]
grid_XL=2*pi*grid_freq*L_grid;
R_l_grid=grid_XL/30;%[ohms]

D_volt=0.7;%[V] very low

switching_freq=20e3;%[Hz]
switching_period=1/switching_freq;%[s]

source_phase_shiftA=0;%%degrees
source_phase_shiftB=-120;%%degrees
source_phase_shiftC=-240;%%degrees



R1=25;%ohms
L1=50e-3;%Henrios

parasiticR=100;%[Ohms]

consigna_V=500;%[V]

simtime=grid_period*40;%seconds
solver_sample_time=switching_period/100;

number_of_harmonics=30;

out = sim('buckconverter_control_simulation.slx',simtime);