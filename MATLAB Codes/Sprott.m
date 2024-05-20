function Sprott
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a = 2.07; b=1.79;
%===================== Initial conditions =================================
initial=[0.63, 0.47, -0.54]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [x(2)+a*x(1)*x(2)+x(1)*x(3); 1-b*x(1)^2+x(2)*x(3); ...
    x(1)-x(1)^2-x(2)^2];
[~,sol] = ode45(deq1,[0, 750],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Sprott Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================