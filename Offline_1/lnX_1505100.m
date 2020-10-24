function ret = lnX_1505100( x, t )

    ret = 0;
    
    for i=1:t
        ret = ret + (-1)^(i - 1) * ((x - 1)^i / i);
    end

end

