function mid = falseposition_1505100(func, low, high, err, maxItr)
    
    mid = 0;
    itr = 0;
    flow = func(low);
    fhigh = func(high);
    curErr = 100;
    
    while(1)
        mid = high - fhigh * ( (low - high) / (flow - fhigh) );
        fmid = func(mid);
        
        if(itr > 0)
            curErr = abs((mid - preMid) / mid) * 100;
        end
        
        if(flow * fmid < 0)
            high = mid;
            fhigh = func(high);
        elseif(flow * fmid > 0)
            low = mid;
            flow = func(low);
        else
            curErr = 0;
        end
        
        if(curErr < err || itr > maxItr)
            break;
        end
        
        itr = itr + 1;
        
        if(itr > 0)
            preMid = mid;
        end
        
    end

end

