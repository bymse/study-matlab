a = input('a=');
b = input('b=');
c = input('c=');
d = input('d=');

y = -10:0.5:10;
x = -10:0.5:10;

[X,Y] = meshgrid(x,y);

Z = (a*X + b* y + d)/c;
figure
surfc(X, Y, Z);

xlabel('x');
ylabel('y');
zlabel('z');