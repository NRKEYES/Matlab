
%This plots the exact solution for part c
t = linspace(-1,10,1000);
term1 = 2*exp((-1/2)*t);
term2 = -2*exp((-3/2)*t);
x = term1 + term2 ;

% This plots the slope function x'
plot(t,x)
hold on;
term1 = -1*exp(-.5.*t);
term2 = 3.*exp(-1.5.*t);
y = term1 + term2;
plot(t,y)


%This plots the exact solution for part d
figure
t = linspace(-1,10,1000);
term1 = -4*exp((-1/2)*t);
term2 = 4*exp((-3/2)*t);
x = term1 + term2 ;
plot(t,x)

%this plots the parametric curves for part b
figure
p = linspace(-.5,10);
x = -4.*exp(-.5.*p)+4.*exp(-1.5.*p);
y = +2.*exp(-.5.*p)-6.*exp(-1.5.*p);
plot(x,y)
comet(x,y)
