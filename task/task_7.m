syms my_func(x)
my_func(x) = exp(1/(1-x.^2))./(1+x.^2);
start_point = -7;
end_point = 7;
fplot(real(my_func), [start_point end_point]); grid on

my_f_diff = diff(my_func);
m_x_vals = solve(my_f_diff == 0);
m_y_vals = my_func(m_x_vals);

hold on
plot(m_x_vals, m_y_vals, '*');
hold off

my_s_diff = diff(my_f_diff);
s_x_vals = solve(my_s_diff == 0);
s_y_vals = my_func(s_x_vals);

hold on
plot(s_x_vals, s_y_vals, '*');
hold off