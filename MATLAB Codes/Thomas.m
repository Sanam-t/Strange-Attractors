function Thomas
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
b = 0.20;
%===================== Initial conditions =================================
initial=[1.1, 1.1, -0.01]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [sin(x(2))-b*x(1); sin(x(3))-b*x(2); sin(x(1))-b*x(3)];
[~,sol] = ode45(deq1,[0, 1000],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Thomas Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================