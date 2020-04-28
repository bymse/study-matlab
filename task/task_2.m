f_my_first_poly = [2 -3 4 -5 6];
f_my_second_poly = [1 -3 1];
disp('First');
disp(deconv(f_my_first_poly, f_my_second_poly));

s_my_first_poly = [1 -3 -1 -1];
s_my_second_poly = [3 -2 1];
disp('Second');
disp(deconv(s_my_first_poly, s_my_second_poly));