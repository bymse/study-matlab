syms x

my_first = atan(x)./2 - x./(2.*(1+x.^2).^2); 
my_second = 3.*x^4 -14.*x.^3 + 12.*x.^2 + 24.*x + 6;
my_thrid = (sin(3.*x)-cos(3.*x)).^2;

disp_simpl_diff(my_first, 'First');
disp_simpl_diff(my_second, 'Second');
disp_simpl_diff(my_thrid, 'Third');

function [] = disp_simpl_diff(my_func, str_numb)
    disp(str_numb);
    disp(simplify(diff(my_func)));
end
