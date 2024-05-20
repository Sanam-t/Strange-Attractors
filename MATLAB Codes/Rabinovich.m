function Rabinovich
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a = 0.14; b=0.1;
%===================== Initial conditions =================================
initial=[-1.00, 0.00, 0.5]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [x(2)*(x(3)-1+x(1)^2)+b*x(1); x(1)*(3*x(3)+1-x(1)^2)+b*x(2);...
    -2*x(3)*(a+x(1)*x(2))];
[~,sol] = ode45(deq1,[0, 500],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Rabinovich-Fabrikant Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================