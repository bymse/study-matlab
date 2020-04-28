syms x
my_syms_poly = (x-1)^100;
my_poly = coeffs(my_syms_poly, 'all');
my_roots = roots(my_poly);

idx = my_roots==real(my_roots);
my_real_roots = my_roots(idx);

x = linspace(-100, 100);
poly_vals = polyval(double(my_poly), double(x));
plot(x, poly_vals);
hold on
plot(my_real_roots,zeros(size(my_real_roots)),'r*');