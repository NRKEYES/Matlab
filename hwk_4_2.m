clear;

%set up the space
yvec = -5: .2 : 5; 
tvec = -5: .2 : 5;
[t,y] = meshgrid(tvec,yvec);

%set up function
delt = ones(size(t));
dely = (y.^2).*t;

%This is a comment
fact = sqrt(delt.^2+dely.^2);
delt = delt./fact;
dely = dely./fact;
quiver(t,y,delt,dely);

%print out the contour map
hold on;
constant = -1;
t = -1.2: .01: 1.2;
y = -2./(t.^2+2*constant);
plot(t,y,'LineWidth',3);

%set up graph ++fancy
set(gca,'FontSize',17);
axis([-5,5,-5,5])
xlabel('theta');
ylabel('r');
title('Problem 2')