syms x
text_func = x^2+1 == 0;

my_answer = solve(text_func);
disp('Solution with solve():');
disp(my_answer);

my_answer = fzero(matlabFunction(text_func),0);
disp('Solution with fzero():');
disp(my_answer);
