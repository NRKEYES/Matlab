% section 2.4 problem 19

clear;

%set up the space
yvec = -5: .2 : 5; 
tvec = -5: .2 : 5;
[t,y] = meshgrid(tvec,yvec);

%set up function
delt = ones(size(t));
dely = 2*exp(t.*-1)-(1.+t).*y./t;

%This is a comment
fact = sqrt(delt.^2+dely.^2);
delt = delt./fact;
dely = dely./fact;
quiver(t,y,delt,dely);

%print out the plot map

constant = 1 ;
t = 0: .0001: .2;
y = ((2000.*t+1800).*(exp(7.*t))-1800)./t
plot(t,y,'LineWidth',3);

%set up graph ++fancy
set(gca,'FontSize',17);
axis([0,.5,0,25000])
xlabel('R');
ylabel('S');
title('Compound Interest-Variable R ')