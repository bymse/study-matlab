syms x
text_func = cos(x) - exp(0.001+x^2);

my_answer = solve(text_func);
disp('Solution with solve():');
plot_with_point(text_func, my_answer, subs(text_func,my_answer), 'solve');
disp(my_answer);

[ zr, fr] = fzero(matlabFunction(text_func),0);
disp('Solution with fzero():');
plot_with_point(text_func, zr, fr, 'fzero');
disp(zr);


function [] = plot_with_point(text_func, zr, fr, title_v)
    m=1000;
    start_point = -100;
    end_point = 100;
    x=linspace(start_point,end_point,m);
    figure
    plot(x,eval(text_func)); grid on
    xlabel('x'); ylabel('y')
    title(title_v);

    if ~isnan(zr)
    hold on
    plot(zr, fr,'r*');
    hold off
    end
end