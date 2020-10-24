function ret = Gauss_Jordan_1505100( A, B )

    [m, n] = size(A);
    
    if m ~= n
        disp('Invalid Input');
        return;
    end
    
    if m ~= size(B, 1)
        disp('Invalid Input');
        return;
    end
    
    for i = 1 : n
        
        idx = i;
        temp = A(i, i);
        
        for j = i + 1 : n
            if abs(A(j, i)) > abs(temp)
                idx = j;
                temp = A(j, i);
            end
        end
        
        if temp == 0
            disp('Invalid Input');
            return;
        end
        
        if idx ~= i
            B(idx, 1) = B(idx, 1) + B(i, 1);
            B(i, 1) = B(idx, 1) - B(i, 1);
            B(idx, 1) = B(idx, 1) - B(i, 1);
            
            for j = 1 : n
                A(idx, j) = A(idx, j) + A(i, j);
                A(i, j) = A(idx, j) - A(i, j);
                A(idx, j) = A(idx, j) - A(i, j);
            end
        end
        
        for j = i : n
            A(i,j) = A(i,j) / temp;
        end
        
        B(i, 1) = B(i, 1) / temp;
        
        for j = 1 : n
            if j ~= i
                temp = A(j, i);
                for k = i : size(A, 2)
                    A(j, k) = A(j, k) - temp * A(i, k);
                end
                B(j, 1) = B(j, 1) - temp * B(i, 1);
            end
        end
    end
    
    ret = B;
    
end

