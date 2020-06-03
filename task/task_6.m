X = [-1 0 1 2 3];
Y = [6 5 0 3 2];
my_coeffs = X\Y;
my_poly = my_coeffs(end,:);

disp(poly2sym(my_poly));
my_lin = linspace(-100, 100);
my_vals = polyval(my_poly, my_lin);
plot(my_lin, my_vals);
hold on
plot(X, Y, 'o');
hold off