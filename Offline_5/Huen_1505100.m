function arr = Huen_1505100(f)

    arr = zeros(9);
    arr(1) = 1;
    
    idx = 2;
    
    for i = .5 : .5 : 4
        arr(idx) = arr(idx - 1) + ((f(i) + f(i - .5)) / 2) * .5;
        idx = idx + 1;
    end

end

