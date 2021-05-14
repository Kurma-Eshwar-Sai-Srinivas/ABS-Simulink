function []=test_mfeval

alpha =pi/180*[-15:0.1:15]';
kappa =0*ones(size(alpha));
camber=0*ones(size(alpha));
Fz    =[1000:1000:4000];

for i=1:length(Fz)
  Fztyre=Fz(i)*ones(size(alpha));
  forces(i,1:length(alpha),1:6)=mfeval([Fztyre alpha kappa camber],mfread('mft_car175_70R13.tir'),2);
end

plot(alpha*180/pi,1e-3*forces(:,:,2));
title('tyre:175/70R13')
xlabel('side slip angle alpha [deg.]');
ylabel('lateral force Fy [kN]');
legend('Fz = 1 kN','Fz = 2 kN','Fz = 3 kN','Fz = 4 kN');
grid

%print -deps alpha_sweep
