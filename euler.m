function [ tend, yend ] = euler( f,t0,y0,T,delT )


n = (T-t0)/delT;
t(1) = t0;
y(1) = y0;

for k = 1:n
    t(k+1) =t(k)+delT;
    y(k+1) = y(k)+delT*f(t(k),y(k));
    
end
plot(t,y,'*-');

tend = t(n+1);
yend = y(n+1);

end

