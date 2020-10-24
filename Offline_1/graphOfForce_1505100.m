function [ output_args ] = graphOfForce_1505100()
    f = 1.25;
    a = .85;
    q = .00002;
    c = 9000000000;
    j = 1;
    
    for i=-5:.1:5
        x(j) = f - ((c * q * q * i) / (i * i + a * a)^(3 / 2));
        y(j) = i;
        j = j + 1;
    end
    
    plot(y, x);
    
end

