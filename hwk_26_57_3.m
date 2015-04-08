t = linspace(0,20);


y= 1/2*exp(-t)-1/2*exp(-2.*t)+heaviside(t-5).*(exp(-(t-5))-exp(-2.*(t-5)))+heaviside(t-10).*(-exp(-(t-10))+1/2+1/2*(exp(-2*(t-10))));

plot(t,y)