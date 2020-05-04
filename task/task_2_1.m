a_1=input('a_1=');
b_1=input('b_1=');
func = @(x) 1./(a_1.*cos(x) + b_1.*sin(x)).^2;

N=100; L1=0; L2=2*pi/3; X=linspace(L1,L2,N);
Y=func(X);

plot(X,Y); grid on;
xlabel('x'); ylabel('f(x)'); 
title(func2str(func));

xr=ginput(2);
[x_m,y_m]=fminbnd(func,xr(1,1),xr(2,1));
hold on
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*')
hold off