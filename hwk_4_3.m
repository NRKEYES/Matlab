clear;

%set up the space
yvec = -5: .2 : 5; 
tvec = -5: .2 : 5;
[t,y] = meshgrid(tvec,yvec);

%set up function
delt = ones(size(t));
dely = (2.*t)./((1+t.^2).*y);

%This is a comment
fact = sqrt(delt.^2+dely.^2);
delt = delt./fact;
dely = dely./fact;
quiver(t,y,delt,dely);

%print out the plot map
hold on;
t = -5: .2: 5;
y = -(log(1+t.^2)*2+4).^(1/2);
plot(t,y,'LineWidth',3);

%set up graph ++fancy
set(gca,'FontSize',17);
axis([-5,5,-5,5])
xlabel('X');
ylabel('Y');
title('Problem 3')