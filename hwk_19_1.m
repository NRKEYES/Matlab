mass = 1;
gamma = 2;
k = 3;

delta = gamma/mass;
omega0 = sqrt(k/mass);


%max
omega = sqrt(2*(delta^2)-omega0^2) ;
%other
%omega = 2 ;


a = (omega0^2-omega^2)/((omega0^2-omega^2)^2-4*(delta^2)*(omega^2));
b = (2*delta*omega)/((omega0^2-omega^2)^2-4*(delta^2)*(omega^2));

t = linspace(0,100);
x = cos(omega0*t)+sin(omega0*t)+a*cos(omega*t)+b*sin(omega*t);

plot(t,x,'linewidth',3);