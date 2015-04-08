% choose one gamma, explore solutions with forcing, varying frequency w.

clear 
figure(1),clf
figure(2),clf
isize=19;
linewidth=2;
set(gca,'fontsize',isize)

x0=1;
x0p=1;
w0=1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%HERE: change gam, final value of t, maximal window size xmax,
%      wait: wait time between snapshots
gam=0.02; tend=400; xmax=4; wait=0.4; %first xmax=4, then 8
%gam=0.05; xmax=10; tend=200; wait=0.1;
%gam=0.1; xmax=5; tend=100; wait=0.5;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

delta=gam/2;
beta=sqrt(4*w0^2-gam^2)/2;
eps=0.2;

t=linspace(0,tend,tend*20);
axvec=[0,tend,-xmax,xmax];

w=0.05;
f=eps*cos(w*t);
c1=x0; c2=(x0p+gam/2*c1)/beta;
xhnone=exp(-gam/2*t).*(c1*cos(beta*t)+c2*sin(beta*t));
figure(1)
plot(t,xhnone,'b-','linewidth',linewidth)
hold on
plot(t,f,'g-','linewidth',1)
hold off
axis(axvec)
pause


for w=[0.05:.05:0.85,0.87:.01:.99,1.01:.01:1.13,1.15:0.05:1.95]
f=eps*cos(w*t);

denom=(w0^2-w^2)^2 + 4*delta^2*w^2;
a=eps*(w0^2-w^2)/denom;  b=eps*2*delta*w/denom;
cmax=sqrt(a^2+b^2)
c1=x0;
c2=(x0p+gam/2*c1)/beta;
xhnone=exp(-gam/2*t).*(c1*cos(beta*t)+c2*sin(beta*t));
c1=x0-a;
c2=(x0p+gam/2*c1-b*w)/beta;
xh=exp(-gam/2*t).*(c1*cos(beta*t)+c2*sin(beta*t));
envelope=sqrt(c1^2+c2^2)*exp(-gam/2*t);
xp=a*cos(w*t)+b*sin(w*t);
figure(1)
plot(t,xhnone,'b-',t,xh+xp,'r-','linewidth',linewidth)
hold on
plot(t,f,'g-','linewidth',1)
hold off
axis(axvec)
figure(2)
hold on
plot(w,cmax,'b*')
axis([0,2,0,xmax])
figure(1)
title('Damped, forced , x"+\gamma x''+x=cos(w t)')
str=sprintf('w= %4.2f',w);
text(500,1.7,str,'fontsize',isize)
pause(wait)

end
