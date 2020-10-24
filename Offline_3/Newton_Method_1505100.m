function ans = Newton_Method_1505100()
    f = @(x) ((3 * x ^ 2) - (x ^ 3));
    f1 = @(x) ((6 * x) - (3 * x ^ 2));
    f2 = @(x) (6 - (6 * x));
    x1 = 0;
    x = 10;
    while abs(x - x1) > .0001
        x1 = x;
        x = x - (f1(x) / f2(x));
    end
    ans = f(x)
end
