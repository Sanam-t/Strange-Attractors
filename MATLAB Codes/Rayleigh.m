function Rayleigh
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a =9; r=12; b=5;
%===================== Initial conditions =================================
initial=[-590, 1, 28000]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [-a*x(1)+a*x(2); r*x(1)-x(2)-x(1)*x(3); x(1)*x(2)-b*x(3)];
[~,sol] = ode45(deq1,[0, 100],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Rayleigh-Benard Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================