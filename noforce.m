% Plots solutions to x"+gamma x' + w0^2 x=0 , x(0)=x0, x'(0)=x0p
% for w0=1 and various values of gamma
% showing oscillations + damping if gamma<gamma_c
% and strong exponential decay if gamma> gamma_c
% since w_0=1, gamma_c=2.

clear, clf
isize=19;
linewidth=2;
set(gca,'fontsize',isize)

x0=1;
x0p=1;
w0=1
c1=x0;

tend=50; t=linspace(0,tend,tend*200);
axvec=[0,tend,-2,2];

%underdamped
for gam=[0:.01:.1,.12:.02:.3,.35:.05:.5,.55:.05:1,1.1:.1:1.9]
   beta=sqrt(4*w0^2-gam^2)/2;
   c2=(x0p+gam/2*c1)/beta;
   xh=exp(-gam/2*t).*(c1*cos(beta*t)+c2*sin(beta*t));
   envelope=sqrt(c1^2+c2^2)*exp(-gam/2*t);

   plot(t,xh,'b-','linewidth',linewidth)
   hold on
   plot(t,envelope,'g-','linewidth',1)
   hold off
   axis(axvec)
   title('Damped, unforced , x"+\gamma x''+x=0, \gamma_c=2')
   str=sprintf('gam= %4.2f',gam)
   text(35,1.7,str,'fontsize',isize)
   legend('x(t)','Ce^{-\gamma t/2}',4)
   pause
end

%critically damped
gam=2;
c2=(x0p+gam/2*c1);
xh=exp(-gam/2*t).*(c1+c2*t);
plot(t,xh,'b-','linewidth',linewidth)
axis(axvec)
title('Damped, unforced , x"+\gamma x''+x=0, \gamma_c=2')
str=sprintf('gam= %4.2f',gam)
%text(35,1.7,str,'fontsize',isize,'color','b')
text(35,1.7,str,'fontsize',isize)
legend('x(t)',4)
pause

%overdamped
for gam=[2.1:.1:4,4.2:.2:10];
beta=sqrt(gam^2-4*w0^2)/2;
r1=-gam/2+beta;
r2=-gam/2-beta;
c2=(x0p-x0*r1)/(r2-r1);
c1=x0-c2;
xh=c1*exp(r1*t)+c2*exp(r2*t);
plot(t,xh,'b-','linewidth',linewidth)
axis(axvec)
title('Damped, unforced , x"+\gamma x''+x=0, \gamma_c=2')
str=sprintf('gam= %4.2f',gam)
%text(35,1.7,str,'fontsize',isize,'color','b')
text(35,1.7,str,'fontsize',isize)
legend('x(t)',4)
pause
end
