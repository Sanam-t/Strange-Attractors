function Chua
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a = 15.6; b=1; c=2558; d=-1; e=0;
%===================== Initial conditions =================================
initial=[0.1, -8, 1]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [a*(x(2)-x(1)-(e*x(1)+(d+e)*(abs(x(1)+1)-abs(x(1)-1))));...
    b*(x(1)-x(2)+x(3)); -c*x(2)];
[~,sol] = ode45(deq1,[0, 1500],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Chua Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================