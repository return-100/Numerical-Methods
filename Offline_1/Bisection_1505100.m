function mid = Bisection_1505100(fun, low, high, err, maxitr)
 
    itr = 0;
    preMid = 0;
    curErr = 100;
    
    while(1)
        mid = (high + low) / 2;
        
        if(itr > 0)
           curErr = abs((mid - preMid) / mid) * 100; 
        end
        
        if(fun(high) * fun(mid) > 0)
            high = mid;
        elseif(fun(high) * fun(mid) < 0)
            low = mid;
        else
            curErr = 0;
        end
        
        if(curErr < err || itr > maxitr)
            break;
        end
        
        itr = itr + 1;
        
        if(itr > 0)
            preMid = mid;
        end
        
    end
    
end

