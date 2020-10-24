function valy = fun_1505100( var, res, valx )

    n = size(var);
    idx = -1;
    
    for i = 1 : n(1) - 1
        if(var(i, 1) <= valx && var(i + 1, 1) >= valx)
            idx = i;
            break;
        end
    end
    
    valy = res(idx * 3 - 2, 1) * valx * valx + res(idx * 3 - 1, 1) * valx + res(idx * 3, 1);

end

