% Plots solutions to x"+w0^2 x=eps*cos(w*t), x(0)=x0, x'(0)=x0p
% for w0=0.5 and various values of w
clear, clf
isize=19;
linewidth=2;
set(gca,'fontsize',isize)

x0=1;
x0p=1;
w0=0.5;
eps=0.1;

tend=1000;
t=linspace(0,tend,tend*100);
xh=x0*cos(w0*t)+x0p/w0*sin(w0*t);

%Closeup
%w approaching w0, beats
axvec=[0,400,-10,10];
for h=[0.4 0.2 0.1 0.05 0.025 .025/2]
  w=w0-h;
  f=eps*cos(w*t);
  fact=eps/(w0^2-w^2);
  x=xh+fact*(cos(w*t)-cos(w0*t));
  plot(t,xh,'linewidth',linewidth)
  hold on
  plot(t,x,'r-',t,f,'g','linewidth',linewidth)
  axis(axvec)
  hold off
  legend('no forcing','forcing','f(t)',3)
  title('Forced undamped, x"+w_0^2x=f(t), with w_0=0.500')
  str=sprintf('w= %4.3f',w)
  text(10,8,str,'fontsize',isize)
  pause
end

%w=w0, resonance
x=xh+eps*t./(2*w0).*sin(w0*t);
hold on
plot(t,x,'k-','linewidth',1)
axis(axvec)
hold off
str=sprintf('w= %4.3f',0.5)
text(10,7,str,'fontsize',isize)
title('Forced undamped, x"+w_0^2x=f(t), with w_0=0.500')
legend('no forcing','forcing','f(t)','resonance',3)
pause

%Larger end value tend, larger y-axis
%w approaching w0, beats
axvec=[0,tend,-30,30];
for h=[0.4 0.2 0.1 0.05 0.025 0.025/2 0.025/4 0.025/8]
eps=.1;
w=w0-h;
f=eps*cos(w*t);
fact=eps/(w0^2-w^2);
x=xh+fact*(cos(w*t)-cos(w0*t));
plot(t,xh,'linewidth',linewidth)
hold on
plot(t,x,'r-',t,f,'g','linewidth',linewidth)
axis(axvec)
hold off
legend('no forcing','forcing','f(t)',3)
title('Forced undamped, x"+w_0^2x=f(t), with w_0=0.500')
str=sprintf('w= %5.3f',w)
text(15,25,str,'fontsize',isize)
pause
end

%w=w0, resonance
x=xh+eps*t./(2*w0).*sin(w0*t);
hold on
plot(t,x,'k-','linewidth',1)
axis(axvec)
hold off
str=sprintf('w= %4.3f',0.5)
text(15,20,str,'fontsize',isize)
title('Forced undamped, x"+w_0^2x=f(t), with w_0=0.500')
legend('no forcing','forcing','f(t)','resonance',3)
pause

%Largest y-axis
%w approaching w0, beats
axvec=[0,tend,-100,100];
for h=[0.4 0.2 0.1 0.05 0.025 0.025/2 0.025/4 0.025/8]
eps=.1;
w=w0-h;
f=eps*cos(w*t);
fact=eps/(w0^2-w^2);
x=xh+fact*(cos(w*t)-cos(w0*t));
plot(t,xh,'linewidth',linewidth)
hold on
plot(t,x,'r-',t,f,'g','linewidth',linewidth)
axis(axvec)
hold off
legend('no forcing','forcing','f(t)',3)
title('Forced undamped, x"+w_0^2x=f(t), with w_0=0.500')
str=sprintf('w= %5.3f',w)
text(30,80,str,'fontsize',isize)
pause
end

%w=w0, resonance
x=xh+eps*t./(2*w0).*sin(w0*t);
hold on
plot(t,x,'k-','linewidth',1)
axis(axvec)
hold off
str=sprintf('w= %4.3f',0.5)
text(30,70,str,'fontsize',isize)
title('Forced undamped, x"+w_0^2x=f(t), with w_0=0.500')
legend('no forcing','forcing','f(t)','resonance',3)
pause
