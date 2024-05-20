function Dequan
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a = 40; b=1.833; c=20; d=0.16; e=0.65; p=55;
%===================== Initial conditions =================================
initial=[1, 0.1, 0.2]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [a*(x(2)-x(1))+d*x(1)*x(3); p*x(1)+c*x(2)-x(1)*x(3); ...
    b*x(3)+x(1)*x(2)-e*x(1)^2];
[~,sol] = ode45(deq1,[0, 30],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Dequan Li Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================