function [eqn] = MatGen_1505100( arr )

    n = size(arr);
    tempx = zeros(3 * (n(1) - 1));
    tempy = zeros;
    p = 1;
    q = 1;

    for i = 1 : 2 * (n(1) - 1)
        tempx(i, p) = arr(q, 1) .*arr(q, 1);
        tempx(i, p + 1) = arr(q, 1);
        tempx(i, p + 2) = 1;
        
        tempy(i, 1) = arr(q, 2);
        
        if(mod(i, 2) == 0)
            p = p + 3;
        else
            q = q + 1;
        end
    end
    
    r = (n(1) - 1) * 2 + 1;
    p = 1;
    q = 2;
    
    for i = 1 : n(1) - 2
        tempx(r, p) = 2 * arr(q, 1);
        tempx(r, p + 1) = 1;
        tempx(r, p + 3) = - 2 * arr(q, 1);
        tempx(r, p + 4) = -1;
        tempy(r, 1) = 0;
        p = p + 3;
        q = q + 1;
        r = r + 1;
    end
    
    tempx((n(1) - 1) * 3, 1) = 1;
    tempy((n(1) - 1) * 3, 1) = 0;
    
    eqn = linsolve(tempx, tempy);

end

