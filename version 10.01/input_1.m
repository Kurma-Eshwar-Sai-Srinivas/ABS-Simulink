%%Run This Before Starting Simulink
c1=1.2801;   % maximum value of friction curve
c2=23.99;    % friction curve shape
c3=0.52;     % friction curve difference between the maximum value and the value at lambda =1
c4=0.03;     % wetness characteristic value (Lies b/w 0.02 and 0.04 s/m)
m=342; %kg
r=0.33; %m
jw=1.13; %kg-m2
fn=m*9.81;
tb=1200;
Vx=27.78;
w=Vx/r;
% kp=8000
% ki=500000
% kd=50
% kp=0
% ki=0    
% kd=0