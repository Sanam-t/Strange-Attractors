function Halvorsen
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a = 2.28;
%===================== Initial conditions =================================
initial=[0.61, -0.95, -0.83]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [-a*x(1)-4*x(2)-4*x(3)-x(2)^2; -a*x(2)-4*x(3)-4*x(1)-x(3)^2;...
    -a*x(3)-4*x(1)-4*x(2)-x(1)^2];
[~,sol] = ode45(deq1,[0, 500],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Halvorsen Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================