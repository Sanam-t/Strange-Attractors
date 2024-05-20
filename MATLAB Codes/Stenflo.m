function Stenflo
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a = 2; b=0.7; c=26; d=1.5;
%===================== Initial conditions =================================
initial=[1, 0.1, 0.2, 0.1]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [a*(x(2)-x(1))+d*x(4); x(1)*(c-x(3))-x(2); x(1)*x(2)-b*x(3);...
    -x(1)-a*x(4)];
[~,sol] = ode45(deq1,[0, 300],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,4)),grid
    title('Lorenz-Stenflo Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================