t= linspace(0,100);

y =1/4.*sin(t)-1/4.*cos(t)+1/4.*exp(-t).*cos(sqrt(2).*t)+1/sqrt(2).*heaviside(t-3*pi).*exp(-(t-3*pi)).*sin(sqrt(2).*(t-3*pi));

plot(t,y);