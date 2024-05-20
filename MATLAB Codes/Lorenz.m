function Lorenz
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a = 10; b = 8/3; r = 28;
%===================== Initial conditions =================================
initial=[1.1, 2, 7]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [a*(x(2)-x(1)); x(1)*(r-x(3))-x(2); x(1)*x(2) - b*x(3)];
[~,sol] = ode45(deq1,[0, 40],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Lorenz Strange Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================