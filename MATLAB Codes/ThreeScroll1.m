function ThreeScroll1
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a = 32.48; b=45.84; c=1.18; d=0.13; e=0.57; f=14.7;
%===================== Initial conditions =================================
initial=[-0.29, -0.25, -0.59]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [a*(x(2)-x(1))+d*x(1)*x(3); b*x(1)-x(1)*x(3)+f*x(2); ...
    c*x(3)+x(1)*x(2)-e*x(1)^2];
[~,sol] = ode45(deq1,[0, 20],initial);
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Three Scroll Unified1 Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================