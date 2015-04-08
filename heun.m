function [ tend,yend ] = heun( f,t0,y0,T,delT )
%HEUN Summary of this function goes here
%   Detailed explanation goes here
n = (T-t0)/delT;
t(1) = t0;
y(1) = y0;

for k = 1 : n
   
   %get current slope;
   current = f(t(k),y(k));
   %get next slope
   %first increment arrays
   t(k+1) = t(k)+delT;
   y(k+1) = y(k)+delT*current;
   next = f(t(k+1),y(k+1));
   %averge the two to estimate next point
   y(k+1) = y(k)+.5*delT*(current+next);
    
end
plot(t,y,'*-');

tend = t(n+1);
yend = y(n+1);
end

