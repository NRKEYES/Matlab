clear;

%set up the space
yvec = -10: .2 : 10; 
tvec = -10: .2 : 10;
[t,y] = meshgrid(tvec,yvec);

%set up function
delt = ones(size(t));
dely = nthroot(y,3);

%This is a comment
fact = sqrt(delt.^2+dely.^2);
delt = delt./fact;
dely = dely./fact;
%quiver(t,y,delt,dely);

%print out the contour map
hold on;
constant = 1;
t = -10: .01 :10;
y = t+t.^2;
plot(t,y,'LineWidth',3);

%set up graph ++fancy
set(gca,'FontSize',17);
axis([-10,10,-10,10])
xlabel('theta');
ylabel('r');
title('Junk')