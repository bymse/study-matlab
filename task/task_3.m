x0 = 4;
syms x
poly = x.^4 - 2.*x.^3 + 6 .* x.^2 - 10.*x + 16;
disp('Poly');
disp(poly);

horner_s_form = horner(poly);
disp('Horner form');
disp(horner_s_form);
disp('Result');
disp(subs(horner_s_form, x, x0));

horner_s_form = diff(poly);
disp('Poly derivative horner form');
disp(horner_s_form);
disp('Result');
disp(subs(horner_s_form, x, x0));




