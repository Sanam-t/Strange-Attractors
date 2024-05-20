function Newton
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a =0.4; b=0.175;
%===================== Initial conditions =================================
initial=[0.1, 0.1, 0.2]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [-a*x(1)+x(2)+10*x(2)*x(3); -x(1)-0.4*x(2)+5*x(1)*x(3);...
    b*x(3)-5*x(1)*x(2)];
[~,sol] = ode45(deq1,[0, 1000],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Newton-Leipnik Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================