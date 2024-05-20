function Lu
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a =-10; b=-4; c=18.1;
%===================== Initial conditions =================================
initial=[1, 0.1, 2]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [-((a*b)/(a+b))*x(1)-x(2)*x(3)+c; a*x(2)+x(1)*x(3);...
    b*x(3)+x(1)*x(2)];
[~,sol] = ode45(deq1,[0, 200],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Lu-Chen Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================