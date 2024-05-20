function Coullet
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a = 0.8; b=-1.1; c=-0.45; d=-1;
%===================== Initial conditions =================================
initial=[1, 0.1, 0.2]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [x(2); x(3); a*x(1)+b*x(2)+c*x(3)+d*x(1)^3];
[~,sol] = ode45(deq1,[0, 1000],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Coullet Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================