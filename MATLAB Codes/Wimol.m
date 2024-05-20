function Wimol
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a = 2;
%===================== Initial conditions =================================
initial=[1, 0.1, 0.2]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [x(2)-x(1); -x(3)*tanh(x(1)); -a+x(1)*x(2)+abs(x(2))];
[~,sol] = ode45(deq1,[0, 1000],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Wimol-Banlue Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================