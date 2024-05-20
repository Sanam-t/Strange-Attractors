function Anishchenko
%==========================================================================
% Matlab program to plot a phase portrait of the 3D chaotic system
%==========================================================================
clear
clc
clf
%==================== Parameters ==========================================
a = 1.5; b=0.08;
%===================== Initial conditions =================================
initial=[1, 0.1, 0.2]; 
% =============== Solves ODEs =============================================
deq1=@(t,x) [a*x(1)+x(2)-x(1)*x(3); -x(1); -b*x(3)+b*x(1)^2];
deq2=@(t,x) [a*x(1)+x(2)-x(1)*x(3); -x(1); -b*x(3)];
x=initial;
if x(1)>0
    [~,sol] = ode45(deq1,[0, 10000],x);
elseif x(1)<=0
    [~,sol] = ode45(deq2,[0, 10000],x);
end
%============= Runs simulation ============================================
    plot3(sol(:,1),sol(:,2),sol(:,3)),grid
    title('Anishchenko-Astakhov Attractor','fontsize',8)
    xlabel('x','fontsize',8)
    ylabel('y','fontsize',8)
    zlabel('z','fontsize',8)
%================= End of program =========================================