function Chen
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a = 5; b=-10; c=-0.38;
%===================== Initial conditions =================================
initial=[5, 10, 10]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [a*x(1)-x(2)*x(3); b*x(2)+x(1)*x(3); c*x(3)+x(1)*x(2)*(1/3)];
[~,sol] = ode45(deq1,[0, 400],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Chen-Lee Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================