function ret = trapizoidal_1505100( seg, a, b )

    f = @(x) (1 / (1 + x * x));
    
    ret = 0;
    
    points = linspace(a, b, seg + 1);
    
    for i = 2 : length(points)
        ret = ret + .5 * ((b - a) / seg) * (f(points(i - 1)) + f(points(i)));
    end

end

