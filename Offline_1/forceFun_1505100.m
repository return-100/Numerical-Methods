function ret = forceFun_1505100(x)
    
    c = 9e9;
    q = 2e-5;
    a = .85;
    
    ret = ((c * q * q * x) / (x * x + a * a)^(3 / 2)) - 1.25;
    
end

