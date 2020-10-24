function ans = Simplex_Method_1505100(A)
    
    while 1
        r = size(A, 1);
        c = size(A, 2);
        n = 2;
        m = -1;
        var = A(1,2);

        for i = 2 : c
            if A(1, i) < var
                var = A(1, i);
                n = i;
            end
        end
        
        if var >= 0
            break;
        end
        
        mn = 1000000000;
        
        for j = 2 : r
            a(j - 1) = A(j, c) / A(j, n);
            if a(j - 1) < mn && a(j - 1) > 0
                mn = a(j - 1);
                m = j;
            end
        end
        
        if m == -1
            disp('No Solution');
            break;
        end
        
        mn = A(m, n);
        
        for i = 1 : c
            A(m, i) = A(m, i) / mn;
        end
        
        for i = 1 : r
            if i == m
                continue;
            end
            
            mn = A(i, n);
            
            for j = 2 : c
                A(i,j) = A(i,j) - mn * A(m, j);
            end
        end
      
    end
    
    ans = A(1, c);

end