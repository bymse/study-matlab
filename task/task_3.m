%% surf
a = input('a=');

[X,Y] = meshgrid(-10:0.5:10);
Z = a .* X .* exp(-X.^2 - Y.^2);
surf(X, Y, Z);
title('surf');

%% surfc
b = input('b=');
[r, beta] = meshgrid(-10:0.1:10,0:pi*0.1:2*pi);
X = r.*cos(beta);
Y = r.*sin(beta);
Z = b ./ r;
surfc(X, Y, Z);
title('surfc');

%% mesh
a = input('a=');
b = input('b=');

u=(0:0.01*pi:2*pi)';
v= -pi/2:0.01*pi:pi/2;

X=a*cos(u)*cos(v);
Y=a*sin(u)*cos(v);
Z=b*sin(v).*ones(size(u));

mesh(X,Y,Z);
title('mesh');