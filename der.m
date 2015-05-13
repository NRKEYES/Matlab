function der = deriv(t,x)
    der = [x(2);-.5*x(2)-5*sin(x(1))];
    