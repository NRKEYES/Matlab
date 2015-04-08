clear;

%set up the space
yvec = -5: .2 : 5; 
tvec = -5: .2 : 5;
[t,y] = meshgrid(tvec,yvec);

%set up function
delt = ones(size(t));
dely = (exp(t)-y)./t;

%This is a comment
fact = sqrt(delt.^2+dely.^2);
delt = delt./fact;
dely = dely./fact;
quiver(t,y,delt,dely);

%print out the plot map
hold on;
t = -5: .1: 2.6;
y =(exp(t)+1-exp(1))./t;
plot(t,y,'LineWidth',3);

%set up graph ++fancy
set(gca,'FontSize',17);
axis([-5,5,-5,5])
xlabel('T');
ylabel('Y');
title('Problem 4')