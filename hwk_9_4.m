clear;
%intialize vairiable that will be used later
f = inline('t^2+y','t','y');
t0 = 1;
y0 = 2;
T =3;


%plots exact solution to the ODE
texact = linspace(0,3,100);
yexact = -texact.^2-2.*texact-2+(7/exp(1)).*exp(texact);
plot(texact,yexact,'r-');
hold on;
pause;

%display header
disp('    delt,     n,        y(T),      error');
%runs the euler script for multiple delta t values.
for delT = 1./2.^[0:8]
    [t,y] = euler(f,t0,y0,T,delT);
    %display elements
    string=[delT,(T-t0)/delT, y, abs(y-yexact(100))];
    disp(string);
    pause;
end
