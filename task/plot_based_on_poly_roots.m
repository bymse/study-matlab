function [] = plot_based_on_poly_roots(my_poly_symb, my_filter)
    my_poly = coeffs(my_poly_symb, 'all');
    disp('Poly');
    disp(my_poly);

    my_roots = roots(my_poly);
    disp('Roots');
    disp(my_roots);

    %idx = (my_roots==real(my_roots));
    idx = my_filter(my_roots);
    real_roots = my_roots(idx);

    max_val = max(real_roots);
    min_val = min(real_roots);

    if max_val == min_val
        disp('Segment has zero lenght');
    end

    x = linspace(min_val, max_val);
    poly_vals = polyval(double(my_poly), double(x));
    plot(x, poly_vals ); 
end

