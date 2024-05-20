function Genesio
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a = 1; b=3.03; c=5.55;
%===================== Initial conditions =================================
initial=[0.1, 0.1, 0.1]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [x(2); x(3); -c*x(1)-b*x(2)-a*x(3)+x(1)^2];
[~,sol] = ode45(deq1,[0, 400],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Genesio-Tesi Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================