%%Run This Before Starting Simulink
c1=1.2801;   % maximum value of friction curve
c2=23.99;    % friction curve shape
c3=0.52;     % friction curve difference between the maximum value and the value at lambda =1
c4=0.03;% wetness characteristic value (Lies b/w 0.02 and 0.04 s/m)
m=342; %kg Mass of vehicle
d=1.293; %kg/m3 %density of air
A=1.2^2; %projected area
Cd=0.85; %coefficient of drag
r=0.33; % radius of wheel
jw=1.13; %kg-m2 
tb=1200;%Braking torque
Vx=27.78; %Longitudinal velocity
w=Vx/r; %angular velocity
W=1.65; %wing span
AR=35;%aspect ratio
H=W/AR; %chord of the wing
F=1.387; %lift coefficient
%kp=8000;
%ki=500000;
%kd=50;
%kp=0;
%ki=0;   
%kd=0;
