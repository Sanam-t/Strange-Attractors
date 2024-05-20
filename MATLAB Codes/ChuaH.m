function ChuaH
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a = 8.45; b=12.08; d=-0.17; e=-1.14;
%===================== Initial conditions =================================
initial=[0.1, 0.1, 0.1]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [a*(x(2)-x(1)-(e*x(1)+(1/2)*(d-e)*(abs(x(1)+1)-abs(x(1)-1))));...
    x(1)-x(2)+x(3); -b*x(2)];
[~,sol] = ode45(deq1,[0, 150],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Chua Hidden Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================