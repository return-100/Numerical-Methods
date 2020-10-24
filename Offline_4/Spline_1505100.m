function Spline_1505100( point, test )

    n = size(point);
    
    for i = 2 : 1 : n(1)
        arr = linspace(1, n(1), i);
        arr = round(arr);
        
        var = zeros;
        
        for j = 1 : i
            var(j, 1) = point(arr(j), 1);
            var(j, 2) = point(arr(j), 2);
        end
        
        res = MatGen_1505100(var);
        
        err = 0;
        l = size(test);
        
        for k = 1 : l(1)
            if (test(k, 2) ~= 0)
                err = err + 100 * ((abs(abs(test(k, 2)) - abs(fun_1505100(var, res, test(k, 1))))) / test(k, 2));
            end
        end
        
        err = err / l(1);
        err
        
        varx = zeros;
        vary = zeros;
        cnt = 1;
        
        for k = -5 : .05 : 5
            varx(cnt) = k;
            vary(cnt) = fun_1505100(var, res, k);
            cnt = cnt + 1;
        end
        
        pause(1);

        scatter(test(:,1), test(:,2));
        
        hold on;
        
        plot(varx, vary);
        
        hold off;    
    end

end

