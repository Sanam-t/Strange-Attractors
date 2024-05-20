function Hadley
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a = 0.2; b=4; c=8; d=1;
%===================== Initial conditions =================================
initial=[-0.1, 0.1, 5]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [-x(2)^2-x(3)^2-a*x(1)+a*c; x(1)*x(2)-b*x(1)*x(3)-x(2)+d;...
    b*x(1)*x(2)+x(1)*x(3)-x(3)];
[~,sol] = ode45(deq1,[0, 1000],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Hadley Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================