function Wang
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a =0.2; b=-0.01; c=1; d=-0.4; e=-1; f=-1;
%===================== Initial conditions =================================
initial=[1, 0.1, 0.2]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [a*x(1)+c*x(2)*x(3); b*x(1)+d*x(2)-x(1)*x(3);...
    e*x(3)+f*x(1)*x(2)];
[~,sol] = ode45(deq1,[0, 5000],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Wang-Sun Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================