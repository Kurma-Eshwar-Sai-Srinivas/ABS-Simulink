function []=test_mfeval
kappa =[-1:0.01:1]';
alpha =0*ones(size(kappa));
camber=0*ones(size(kappa));
Fz    =[1000:1000:4000];

for i=1:length(Fz)
  Fztyre=Fz(i)*ones(size(kappa));
  forces(i,1:length(kappa),1:6)=mfeval([Fztyre alpha kappa camber],mfread('L_swt_car205_60R15.tir'),2);
end

plot(kappa,1e-3*forces(:,:,2));
title('tyre:205/60R15')
xlabel('side slip angle alpha [deg.]');
ylabel('longitudinal force Fx [kN]');
legend('Fz = 1 kN','Fz = 2 kN','Fz = 3 kN','Fz = 4 kN');
grid

%print -deps alpha_sweep
