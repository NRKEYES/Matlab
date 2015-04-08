
for w = 0 :.1:.9
	t = linspace(-10,10);

    y = 3.*(cos(t.*w)-cos(t))/(1-w^2);

    plot (t,y,'col',[1-w,w,0],'linewidth',3);
    hold on;
end
