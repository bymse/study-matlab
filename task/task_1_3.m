disp('First');
text_func = 'sin(exp(x))';
start_point = -3;
end_point = 3;
solve_with_plot(text_func, start_point, end_point);

disp('Second')
text_func = 'sin(x.*(1-x))';
start_point = 0;
end_point = 2*pi;
solve_with_plot(text_func, start_point, end_point);

disp('Third');
text_func = 'x.*sin(x)-cos(x)';
start_point = 0;
end_point = 4*pi;
solve_with_plot(text_func, start_point, end_point);


function [] = solve_with_plot(text_func, start_point, end_point)
    m=100;
    x=linspace(start_point,end_point,m);
    figure
    plot(x,eval(text_func),x,0*x,':'); grid on
    xlabel('x'); ylabel('y')
    title(text_func);
   
    z=ginput(1);
    [zr,fr]=fzero(text_func,z(1));
    
    hold on
    plot(zr,fr,'r*',z(1),z(2),'g*')
    hold off
       
end