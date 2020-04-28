importdata('plot_based_on_poly_roots.m');

n = input('n=');
syms x
my_poly_symb = x^(2*n) - n*x^(n+1)+n*x^(n-1) - 1;
plot_based_on_poly_roots(my_poly_symb, @filter_duplicate_vals);

function [idx] = filter_duplicate_vals(a_few_vals)
    idx = (a_few_vals==real(a_few_vals));
    real_vals = a_few_vals(idx);
    [~, w] = unique(real_vals, 'stable' );
    idx = setdiff(1:numel(real_vals), w );
end
