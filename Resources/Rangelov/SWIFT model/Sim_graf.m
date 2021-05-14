figure;
tb=0.5;
te=3.25; %time(length(time));
Vinpl=85/3.6;
na=-90;
pa=3;
A=10;
subplot(4,2,1); plot(time80_5,Tb80_5); title('Brake Torque [Nm]');axis([tb te 0 3000]);grid
subplot(4,2,3); plot(time80_5,Fx_c80_5); hold on; plot(time80_5,Fz_c80_5,'LineWidth',1.8); hold off; title('Fz,c(thick line); Fx,c; [N]'); axis([tb te -4500 4000]);grid
subplot(4,2,7); plot(time80_5,X1minX280_5); hold off; xlabel('Time [s]');title('Hor. Axle Disp. [m]');axis([tb te -0.06 0]);grid
subplot(4,2,2); plot(time80_5,My_r80_5+0.69*om_dot80_5); hold on; plot(time80_5,+0.69*om_dot80_5,'LineWidth',1.5);hold off; title('My,r corr; Mbelt (thick line); [Nm]');axis([tb te -1000 1500]);grid
subplot(4,2,5); plot(time80_5,X2_dot80_5,'LineWidth',1.8);hold on; plot(time80_5,omega80_5*0.3067); title('Vehicle (thick line) and Wheel-peripheral Speed [m/s]');axis([tb te 0 Vinpl]);grid
subplot(4,2,4); plot(time80_5,om_dot80_5*0.3067); hold on;plot(time80_5,na,time80_5,pa,time80_5,A); hold off; title('Wheel-peripheral acc. [m/s^2]');axis([tb te -300 50]);grid
subplot(4,2,6); plot(time80_5,-slip_est80_5,time,varinf(:,2)); title('Slip');axis([tb te -1 0]);grid
subplot(4,2,8); plot(time80_5,X2_ddot80_5);xlabel('Time [s]');title('Vehicle acceleration [m/s^2]');axis([tb te -15 0]);grid
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%LOCKED WHEEL ZOOM

figure;
tb=0.5;
te=2; %time(length(time));
Vinpl=85/3.6;

subplot(4,2,1); plot(time,Tb,'LineWidth',1.5); hold on; plot(time,Tb_corr); hold off; title('Brake Torque Tb(thick line) and Tb,corrected [Nm]'); ylabel('a)'); set(get(gca,'ylabel'),'Rotation',0);axis([tb te 0 1500]);grid
subplot(4,2,3); plot(time,Fx_c); hold on; plot(time,Fz_c,'LineWidth',1.5); hold off; title('Fz,c(thick line); Fx,c; [N]'); ylabel('c)');set(get(gca,'ylabel'),'Rotation',0);axis([tb te -4500 4000]);grid
subplot(4,2,5); plot(time,X2_dot,'LineWidth',1.5);hold on; plot(time,omega*0.3067); title('Vehicle (thick line) and Wheel-peripheral Speed [m/s]'); ylabel('e)');set(get(gca,'ylabel'),'Rotation',0);axis([tb te 0 Vinpl]);grid
subplot(4,2,7); plot(time,X1minX2); hold off; xlabel('Time [s]');title('Hor. Axle Disp. [m]');ylabel('g)'); set(get(gca,'ylabel'),'Rotation',0);axis([tb te -0.06 0]);grid
subplot(4,2,2); plot(time,My_r+0.69*om_dot); hold on; plot(time,My_r,':','LineWidth',1.2); plot(time,-0.69*om_dot,'LineWidth',1.8);hold off; title('My,r(...); My,r corr; Mbelt (thick line); [Nm]'); ylabel('b)');set(get(gca,'ylabel'),'Rotation',0);axis([tb te -100 1500]);grid
subplot(4,2,4); plot(time,om_dot*0.3067);title('Wheel-peripheral acc. [m/s^2]'); ylabel('d)');set(get(gca,'ylabel'),'Rotation',0);axis([tb te -50 50]);grid
subplot(4,2,6); plot(time,-slip_est); title('Slip');ylabel('f)');set(get(gca,'ylabel'),'Rotation',0);axis([tb te -0.25 0]);grid
subplot(4,2,8); plot(time,X2_ddot);xlabel('Time [s]'); title('Vehicle acceleration [m/s^2]');ylabel('h)');set(get(gca,'ylabel'),'Rotation',0);axis([tb te -15 0]);grid


%%%%%%%%%%%%grafical prove of the statment My,r corrected = Fx,c*r_load %%%%%%%
figure;
plot(time,My_r+0.69*om_dot); hold on; plot(time,My_r,':','LineWidth',1.2); plot(time,-0.695*om_dot,'LineWidth',1.5);plot(time,-Fx_c*0.2968,'--','LineWidth',1.5);hold off; ylabel('b)');set(get(gca,'ylabel'),'Rotation',0);legend('My,r corr   [Nm]','My,r          [Nm]','Mbelt         [Nm]','Fx,c * r_l_o_a_d [Nm]' );axis([tb te -100 1600]);grid

%%%%%%%%%%%%set(get(gca,'ylabel'),'Rotation',0);%%%%%%%%%%%%%%%%%%%%%%

figure;
tb=2.5;
te=5.0; %time(length(time));
Vinpl=85/3.6;

subplot(4,2,1); plot(time,Tb,'LineWidth',1.5); title('Brake Torque Tb(thick line) and Tb,corrected [Nm]'); ylabel('a)'); set(get(gca,'ylabel'),'Rotation',0);axis([tb te 0 2500]);grid
subplot(4,2,3); plot(time,Fx_c); hold on; plot(time,Fz_c,'LineWidth',1.5); hold off; title('Fz,c(thick line); Fx,c; [N]'); ylabel('c)');set(get(gca,'ylabel'),'Rotation',0);axis([tb te -6000 6000]);grid
subplot(4,2,5); plot(time,X2_dot,'LineWidth',1.5);hold on; plot(time,omega*0.3067);title('Vehicle (thick line) and Wheel-peripheral Speed [m/s]'); ylabel('e)');set(get(gca,'ylabel'),'Rotation',0);axis([tb te 0 Vinpl]);grid
subplot(4,2,7); plot(time,X1minX2); hold off; xlabel('Time [s]');title('Hor. Axle Disp. [m]');ylabel('g)'); set(get(gca,'ylabel'),'Rotation',0);axis([tb te -0.06 0]);grid
subplot(4,2,2); plot(time,My_r+0.69*om_dot); hold on; plot(time,-0.69*om_dot,'LineWidth',1.8);hold off; title('My,r corr; Mbelt (thick line); [Nm]'); ylabel('b)');set(get(gca,'ylabel'),'Rotation',0);axis([tb te -500 2500]);grid
subplot(4,2,4); plot(time,om_dot*0.3067);title('Wheel-peripheral acc. [m/s^2]'); ylabel('d)');set(get(gca,'ylabel'),'Rotation',0);axis([tb te -250 250]);grid
subplot(4,2,6); plot(time,-slip_est); title('Slip');ylabel('f)');set(get(gca,'ylabel'),'Rotation',0);axis([tb te -1 0]);grid
subplot(4,2,8); plot(time,X2_ddot);xlabel('Time [s]'); title('Vehicle acceleration [m/s^2]');ylabel('h)');set(get(gca,'ylabel'),'Rotation',0);axis([tb te -15 0]);grid

figure;
plot(time,X2_dot,'LineWidth',1.5);hold on; plot(time,omega*0.3067); plot(time,X2_dot*0.90,':',time,X2_dot*0.80,'--'); title('Vehicle Speed (thick line); Wheel-peripheral Speed; 90% (...) and 80% (---) Vehicle Speed curves [m/s]'); ylabel('e)');set(get(gca,'ylabel'),'Rotation',0);xlabel('Time [s]'); axis([tb te 0 Vinpl]);grid
figure;
plot(time,Fx_c); title('Fx,c; [N]'); ylabel('c)');set(get(gca,'ylabel'),'Rotation',0);axis([tb te -4100 -3900]);grid



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% Zoom optimal

figure;
tb=2.5;
te=4.5; %time(length(time));
Vinpl=85/3.6;

subplot(4,2,1); plot(time,Tb,'LineWidth',1.5); title('Brake Torque Tb [Nm]'); ylabel('a)'); set(get(gca,'ylabel'),'Rotation',0);axis([tb te 0 1500]);grid
subplot(4,2,3); plot(time,Fx_c); hold on; plot(time,Fz_c,'LineWidth',1.5); hold off; title('Fx,c; [N]'); ylabel('c)');set(get(gca,'ylabel'),'Rotation',0);axis([tb te -4100 -3900]);grid
subplot(4,2,5); plot(time,X2_dot,'LineWidth',1.5);hold on; plot(time,omega*0.3067); title('Vehicle (thick line) and Wheel-peripheral Speed [m/s]'); ylabel('e)');set(get(gca,'ylabel'),'Rotation',0);axis([tb te 0 Vinpl]);grid
subplot(4,2,7); plot(time,X1minX2); xlabel('Time [s]');title('Hor. Axle Disp. [m]');ylabel('g)'); set(get(gca,'ylabel'),'Rotation',0);axis([tb te -0.05 -0.04]);grid
subplot(4,2,2); plot(time,My_r+0.69*om_dot); hold on; plot(time,-0.69*om_dot,'LineWidth',1.8);hold off; title('My,r corr; [Nm]'); ylabel('b)');set(get(gca,'ylabel'),'Rotation',0);axis([tb te 1000 1300]);grid
subplot(4,2,4); plot(time,om_dot*0.3067);title('Wheel-peripheral acc. [m/s^2]'); ylabel('d)');set(get(gca,'ylabel'),'Rotation',0);axis([tb te -50 20]);grid
subplot(4,2,6); plot(time,-slip_est); title('Slip');ylabel('f)');set(get(gca,'ylabel'),'Rotation',0);axis([tb te -0.2 0]);grid
subplot(4,2,8); plot(time,X2_ddot);xlabel('Time [s]'); title('Vehicle acceleration [m/s^2]');ylabel('h)');set(get(gca,'ylabel'),'Rotation',0);axis([tb te -14 -11]);grid


%%%%%%%%%%%%%%%  Statistical calculations%%
%%%%%%%%%%%%%%%%%%% Begin %%%%%%%%
figure;
plot(Tb);
be=4500
en=length(time)
Ibelt=0.695

avacc=mean(X2_ddot(be:en));
accmin=min(X2_ddot(be:en));
accmax=max(X2_ddot(be:en));
accstd=std(X2_ddot(be:en));
accel=[accmin,avacc,accmax,accstd]

avsl=mean(slip_est(be:en));
slmin=min(slip_est(be:en));
slmax=max(slip_est(be:en));
slstd=std(slip_est(be:en));
slip=100*[slmax,avsl,slmin,slstd]

avMc=mean(My_r(be:en)+Ibelt*om_dot(be:en));
Mcmin=min(My_r(be:en)+Ibelt*om_dot(be:en));
Mcmax=max(My_r(be:en)+Ibelt*om_dot(be:en));
Mcstd=std(My_r(be:en)+Ibelt*om_dot(be:en));
Myrcorr=[Mcmax,avMc,Mcmin,Mcstd]

avFxc=mean(Fx_c(be:en));
Fxcmin=min(Fx_c(be:en));
Fxcmax=max(Fx_c(be:en));
Fxcstd=std(Fx_c(be:en));
Fxc=[Fxcmin,avFxc,Fxcmax,Fxcstd]

avFzc=mean(Fz_c(be:en));
Fzcmin=min(Fz_c(be:en));
Fzcmax=max(Fz_c(be:en));
Fzcstd=std(Fz_c(be:en));
Fzc=[Fzcmax,avFzc,Fzcmin,Fzcstd]

stopd(en)
time(en)

%%%%%%%%%%%%%%%%%%%%%%%% END %%%%%%%%%%%%%%%%%%