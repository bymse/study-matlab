syms x
disp('First');
my_first = x.*exp(-x);
disp(limit(my_first));

disp('Second');
my_second = tan(x.^(tan(2.*x)));
disp(limit(my_second, pi/4));

disp('Third');
my_third = atan(1./(1-x));
disp(limit(my_third, 'x', 1, 'right'));