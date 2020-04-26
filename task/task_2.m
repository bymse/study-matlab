%% First
a = input('a=');

[X,Y] = meshgrid(0 : 0.5 : 10);

Z = a*sin(sqrt(X^2 + Y^2))/ sin(sqrt(X^2 + Y^2));


plot3(X, Y, Z);
title('First');
xlabel('x');
ylabel('y');
zlabel('z');

%% Second

[X,Y] = meshgrid(0 : 0.5 : 10);

Z = -X*sin(X) - Y*cos(Y);

mesh(X, Y, Z);
title('Second');
xlabel('x');
ylabel('y');
zlabel('z');
