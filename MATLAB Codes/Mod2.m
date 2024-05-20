function Mod2
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a =0.9; b=5; c=9.9; d=1;
%===================== Initial conditions =================================
initial=[-5, -5, -5]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [-a*x(1)+x(2)^2-x(3)^2+a*c; x(1)*(x(2)-b*x(3))+d;...
    -x(3)+x(1)*(b*x(2)+x(3))];
[~,sol] = ode45(deq1,[0, 80],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Lorenz Mod2 Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================