function Aizawa
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a= 0.95; b=0.7; c=0.6; d=3.5; e=0.25; f=0.1;
%===================== Initial conditions =================================
initial=[0.1, 1.00, 0.01]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [(x(3)-b)*x(1)-d*x(2); d*x(1)+(x(3)-b)*x(2); ...
    c+a*x(3)-(1/3)*x(3)^3-(x(1)^2+x(2)^2)*(1+e*x(3))+f*x(3)*x(1)^3];
[~,sol] = ode45(deq1,[0,250],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Aizawa Strange Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================