function [ output_args ] = graphOflnX_1505100()
    j = 1;
    for i=.1:.1:2
        x(j) = log(i);
        y(j) = i;
        x1(j) = lnX_1505100(i, 1);
        x2(j) = lnX_1505100(i, 3);
        x3(j) = lnX_1505100(i, 5);
        x4(j) = lnX_1505100(i, 200);
        j = j + 1;
    end
    
    plot(y, x, y, x1, y, x2, y, x3, y, x4);
end

