function Dadras
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a = 3; b=2.7; c=1.7; d=2; e=9;
%===================== Initial conditions =================================
initial=[1.1, 2.1, -2]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [x(2)-a*x(1)+b*x(2)*x(3); c*x(2)-x(1)*x(3)+x(3); ...
    d*x(1)*x(2)-e*x(3)];
[~,sol] = ode45(deq1,[0, 400],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Dadras Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================