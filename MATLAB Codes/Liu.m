function Liu
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a = 0.4; b=12; c=5;
%===================== Initial conditions =================================
initial=[-0.1, 0.1, 0.2]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [a*x(1)-x(2)*x(3); -b*x(2)+x(1)*x(3); -c*x(3)+x(1)*x(2)];
[~,sol] = ode45(deq1,[0, 1000],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Liu-Chen Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================