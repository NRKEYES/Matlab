
clear;
%intialize vairiable that will be used later
f = inline('(y^3)/6-y-(t^2)/3','t','y');
t0 = -1;
y0 = 1;
T =3;
lastError = 0;
format COMPACT;
format shorteng;

hold on;
%A
%display header
disp('Part A-exact      ');

[t,y] = heun(f,t0,y0,T,1/1000);
%display elements
exactAnswer = y;
disp(exactAnswer);
pause;

%B
disp('Part B-Euler Method');

%display header
disp('    delt,              n,              y(T),          error,         reduction factor');
%runs the euler script for multiple delta t values.
for delT = 1./2.^[0:8]
    [t,y] = euler(f,t0,y0,T,delT);
    %display elements
    currentError = abs(y-exactAnswer);
    string=[delT,(T-t0)/delT, y, currentError, lastError/currentError];
    lastError = currentError;
    disp(string);
    pause;
end



%C
disp('Part C-Heun Method');
%display header
disp('    delt,     n,        y(T),      error,   reduction factor');
%runs the euler script for multiple delta t values.
for delT = 1./2.^[0:8]
    [t,y] = heun(f,t0,y0,T,delT);
    %display elements
    currentError = abs(y-exactAnswer);
    string=[delT,(T-t0)/delT, y, currentError, lastError/currentError];
    lastError = currentError;
    disp(string);
    pause;
end