function Newton_1505100( pointx, pointy, testx, testy )

    for i = 1 : length(pointx)
        diff(i, 1) = pointy(i);
    end
    
    for i = 2 : length(pointx)
        for j = 2 : i
            nom = diff(i, j - 1) - diff(i - 1, j - 1);
            denom = pointx(i) - pointx(i - j + 1);
            diff(i, j) = nom / denom;
        end
    end
    
    for i = 1 : length(pointx)
        b(i) = diff(i, i);
    end
    
    tempx = -.6 : .005 : .6;
    
    for i = 1 : length(tempx)
        tempy(i) = b(1);
        var = tempx(i) - pointx(1);
        for j = 2 : length(pointx)
            tempy(i) = tempy(i) + var * b(j);
            var = var * (tempx(i) - pointx(j));
        end
    end
    
    scatter(testx, testy);
    
    hold on;
    
    plot(tempx, tempy);
    
    hold off;
    
    for i = 1 : length(testx)
        arr(i) = b(1);
        var = testx(i) - pointx(1);
        for j = 2 : length(pointx)
            arr(i) = arr(i) + var * b(j);
            var = var * (testx(i) - pointx(j));
        end
    end
    
    err = 0;
    
    for i = 1 : length(arr)
        err = err + 100 * abs((testy(i) - arr(i)) / testy(i));
    end
    
    err = err / length(arr);
    
    err

end

