
hold on
for i = -15:3;
    [t,y]=ode45('pendulum',[0,100],[0,.4*i]);
    plot(y(:,1),y(:,2));
end
    