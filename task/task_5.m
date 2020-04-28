syms x

disp('First');
f_first_poly = x.^2;
f_second_poly = (x-1).*(x+2).*(x+3);
disp(make_deconved(f_first_poly, f_second_poly));

disp('Second');
s_first_poly = 3 + x;
s_second_poly = (x-1).*(x.^2+1);
disp(make_deconved(s_first_poly, s_second_poly));


disp('Third');
t_first_poly = x.^2;
t_second_poly = (x.^4-1);
disp(make_deconved(t_first_poly, t_second_poly));


function [P, K] = make_deconved(one_syms_poly, two__syms_poly)
    syms x
    first_poly_coef = double(coeffs(one_syms_poly, 'all'));
    second_poly_coef = double(coeffs(two__syms_poly, 'all'));
    [r, s, K]=residue(first_poly_coef, second_poly_coef);
    P = r./(x-s);
end
