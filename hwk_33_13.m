t=linspace(0,10);

x = 7*exp(-t)-4*exp(-2*t);
y = 7*exp(-t)-6*exp(-2*t);

plot(t,y);
hold on;
plot(t,x);