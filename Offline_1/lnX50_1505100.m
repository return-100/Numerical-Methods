function [ output_args ] = lnX50_1505100()

    for i = 2:1:50
        x(i - 1) = abs((lnX_1505100(1.5, i) - lnX_1505100(1.5, i - 1)) / lnX_1505100(1.5, i)) * 100;
        y(i - 1) = i;
    end
    
    plot(y, x);
end

