function [] = Romberg_1505100()

    seg = 4;
    a = -3;
    b = 3;
    tv = 2.498091544796509;
    err = 1;
    cur = 100;
    itr = 0;
    
    while (cur > err)
        
        itr = itr + 1;
        
        table = zeros(seg);
        
        for i = 1 : seg / 2
            table(i) = trapizoidal_1505100(i * 2, a, b);
        end
        
        lim = 2;
        
        for i = 1 : seg - 1
            
            for j = length(table) : -1 : lim
                table(j) = (4^i * table(j) - table(j - 1)) / (4^i - 1);
            end
            
            lim = lim +  1;
        end
        
        val = table(seg / 2);
        
        cur = abs(abs(tv - val) / tv) * 100;
        
        seg = seg + 2;
        
    end
    
    itr
    tv
    val
    cur
    
end
