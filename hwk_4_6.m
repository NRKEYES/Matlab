clear;

%set up the space
yvec = -5: .2 : 5; 
tvec = -5: .2 : 5;
[t,y] = meshgrid(tvec,yvec);

%set up function
delt = ones(size(t));
dely = 2*cos(t)+1/2*y;

%This is a comment
fact = sqrt(delt.^2+dely.^2);
delt = delt./fact;
dely = dely./fact;
quiver(t,y,delt,dely);

%print out the plot map
hold on;
constant = -5/5;
t = -5: .01: 6;
y = .8/5*sin(t)-.4/5*cos(t)+(constant+4/5)*exp(t./2);
plot(t,y);
plot(t,y,'LineWidth',3);

%set up graph ++fancy
set(gca,'FontSize',17);
axis([-5,5,-5,5])
xlabel('T');
ylabel('Y');
title('Problem 6')