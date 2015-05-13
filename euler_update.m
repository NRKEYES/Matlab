function [tend,yend]=euler_update(f,t0,y0,T,delt)
    n=(T-t0)/delt;
	t=t0;  y=y0;
	xvec=zeros(1,n);
    yvec=zeros(1,n);
    
	for k=1:n
        t=t+delt;
        f(y)
        pause;
        y=y+delt*f(y);
        xvec(k)=y(1);
        yvec(k)=y(2);
    end
    
	plot(xvec,yvec)
	tend=t;
    yend=y;