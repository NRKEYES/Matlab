t=linspace(-10,10);

y =cosh(t)-20.*heaviside(t-3).*(sinh(t-3));


plot(t,y);