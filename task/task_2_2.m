start_point = -100;
end_point = 100;
X = linspace(-10, 10, 1000);
my_params = [[1, 1]; [2,3]; [4,5]; [30, 50]];
my_func = @(x, alpha, beta) ((x.^alpha) .* (exp(-beta.*x)));

Y = my_func(X, my_params(:,1), my_params(:,2));


for my_index = 1:size(my_params, 1)
    hold on
    nexttile
    plot(X,Y(my_index,:));
    hold off
    alpha = my_params(my_index,1);
    beta = my_params(my_index,2);
    T = ['Alpha=',num2str(alpha),',', 'Beta=',num2str(beta)];
    title(T);
    mu_fixed_func = @(x) (my_func(x, alpha, beta));
    [x_m,y_m]=fminbnd(mu_fixed_func,-10,10);
    hold on
    plot(x_m,y_m,'r*');
    hold off
end 

xlabel('x'); ylabel('f(x)');

