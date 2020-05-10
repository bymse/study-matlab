syms x
my_poly = x^5 + 4*x.^4 - 2.*x.^3 - 14.*x.^2 - 3.*x - 18;
disp(factor(my_poly));

syms y
my_poly = x^3 + y*x.^2 + x.^2 - 2.*x.*y.^2 +x.*y-2.*y^2;
disp(factor(my_poly));