% Anti-Lock Braking System - Main Program

%% Parameters involved in calculation
m = 493;          % mass of vehicle per wheel in kg
g = 9.81;         % acceleration due to gravity in m/s2
Rw = 0.33;        % radius of the wheel in m
Jw = 1.13;        % moment of inertia of wheel in kg/m2

%% Friction coefficients calculation
data = xlsread('ABS.xlsx');
slip = data(:,1);
mu = data(:,2);

%% Aerodynamic Decceleration Force & Rolling Force Calculation
Ca = 0.29;       % aerodynamic resistance
Af = 2;          % vehicle frontal area in m2
rho = 1.2;       % Air Density in kg/m2
Vi = 27.8;       % initial velocity in m/s (100 Km/Hr)
Cr = 0.008;      % rolling resistance

%% PMDC specification
Ra = 1;          % armature resistance in ohm
La = 0.005;      % armature inductance in Henry
Kb = 0.1;        % back-emf constant
Kt = 10;         % torque constant
J = 2;           % rotor inertia in kg/m2
Bm = 0.5;        % viscous-friction coefficient

sim_time = 25;   % simulalation time
sim('abs_dbw.slx')