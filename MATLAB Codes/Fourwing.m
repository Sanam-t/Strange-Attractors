function Fourwing
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a = 0.2; b=0.01; c=-0.4;
%===================== Initial conditions =================================
initial=[1.3, -0.018, 0.01]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [a*x(1)+x(2)*x(3); b*x(1)+c*x(2)-x(1)*x(3); -x(3)-x(1)*x(2)];
[~,sol] = ode45(deq1,[0, 2000],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Four-Wing Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================