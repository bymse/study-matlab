n = input('n=');
some_matrix = rand(n);
disp(some_matrix);
mtrx_eigenvalues = eig(some_matrix);
my_poly = poly(mtrx_eigenvalues);
disp(my_poly);
poly_vals = polyval(my_poly, some_matrix);
if nnz(poly_vals) == 0
    disp('The matrix is the root of the poly');
else
    disp('The matrix is NOT the root of the poly');
end