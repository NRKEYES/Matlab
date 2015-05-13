function xp = pendulum(t,x)
    %The t is just there because of the way ode45 calls the function
    xp = [x(2);
        -.2*x(2)-2*sin(x(1)-pi)];
end
    
    