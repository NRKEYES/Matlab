clear;

%set up the space
yvec = -5: .1 : 5; 
tvec = -5: .1 : 5;
[t,y] = meshgrid(tvec,yvec);

%set up function
delt = ones(size(t));
dely = (t.^2)./(1-y.^2);

%This is a comment
fact = sqrt(delt.^2+dely.^2);
delt = delt./fact;
dely = dely./fact;
quiver(t,y,delt,dely);

%print out the contour map
hold on;
f = y - ((y.^3)/3) -((t.^3)/3);
[c,h] = contour(t,y,f,[-8:1:8]);
set(h,'LineWidth',3)

%set up graph ++fancy
set(gca,'FontSize',17);
axis([-5,5,-5,5])
xlabel('T');
ylabel('Y');
title('Problem 1')