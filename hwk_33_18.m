t = linspace(0,1);

x1 = (1/4)*exp(t)+(7/4)*exp(-2*t);
x2 = (-1/2)*exp(t)+(7/2)*exp(-2*t);

plot(t,x1);
hold on;
plot(t,x2);