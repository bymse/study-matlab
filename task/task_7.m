importdata('plot_based_on_poly_roots.m');
my_filter = @(my_roots)my_roots==real(my_roots);
syms x
my_poly_symb = x^(3) - 6*x^(2)+15*x - 14;
plot_based_on_poly_roots(my_poly_symb, my_filter);

my_poly_symb = 10*x^4 - 13*x^3 + 15*x^2 - 18*x - 24;
plot_based_on_poly_roots(my_poly_symb, my_filter);