function Rossler
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a = 0.2; b=0.2; c=5.7;
%===================== Initial conditions =================================
initial=[0.1, 0.00, 0.1]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [-x(2)-x(3); x(1)+a*x(2); b+x(3)*(x(1)-c)];
[~,sol] = ode45(deq1,[0, 1000],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Rossler Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================