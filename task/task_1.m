my_poly = [1 -3.55 5.1 -3.1];
x = linspace(-100, 100);
poly_vals = polyval(double(my_poly), double(x));
plot(x, poly_vals); grid on