function Hyperchaotic
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a=2.6; b=0.44;
%===================== Initial conditions =================================
initial=[2, 4, 0, 0];
% =============== Solves ODEs =============================================
deq1=@(t,x) [x(2)-x(1); -x(1)*x(3)+x(4); x(1)*x(2)-a; -b*x(2)];
[~,sol] = ode45(deq1,[0,1000],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Hyperchaotic','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
    figure
    plot(sol(:,1),sol(:,2)),grid
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    figure
    plot(sol(:,2),sol(:,3)),grid
    xlabel('y','fontsize',8)
    ylabel('z','fontsize',8)
    figure
    plot(sol(:,1),sol(:,3)),grid
    xlabel('x','fontsize',8)
    ylabel('z','fontsize',8)
    figure
    plot(sol(:,4),sol(:,1)),grid
    xlabel('u','fontsize',8)
    ylabel('x','fontsize',8)
%================= End of program =========================================