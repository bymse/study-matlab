syms n
disp('First');
disp(symsum(-1^((n^2+n)/2)*n/2^n))

syms x
disp('Second');
my_func = ((3-x).^(2.*n))./sqrt(n);
my_sum = symsum(my_func, n, [1 Inf]);
disp(my_sum);

syms k
disp('Third');
my_func = 1./(x-k).^3;
disp(symsum(my_func, k, -Inf, Inf));