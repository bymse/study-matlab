disp_taylor(exp(x), 'First', 0, 6);
disp_taylor((sin(x)).^2, 'Second', 0, 11);


function [] = disp_taylor(my_func, str_numb, start_p, my_count)
    syms x
    disp(str_numb);
    disp(my_func);
    disp(taylor(my_func, x, start_p, 'Order',  my_count));
end