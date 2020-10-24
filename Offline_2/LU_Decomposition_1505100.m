function ret = LU_Decomposition_1505100( A, B )
    
    [m, n] = size(A);
    
    if m ~= n
        disp('Invalid Input');
        return;
    end
    
    if m ~= size(B, 1)
        disp('Invalid Input');
        return;
    end
    
    L = eye([m, n]);
    U = A;
    
    for i = 1 : n
        
        idx = i;
        temp = U(i, i);
        
        for j = i + 1 : n
            if abs(U(j, i)) > abs(temp)
                idx = j;
                temp = U(j, i);
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
                U(idx, j) = U(idx, j) + U(i, j);
                U(i, j) = U(idx, j) - U(i, j);
                U(idx, j) = U(idx, j) - U(i, j);
            end
            
            for j = 1 : i - 1
                L(idx, j) = L(idx, j) + L(i, j);
                L(i, j) = L(idx, j) - L(i, j);
                L(idx, j) = L(idx, j) - L(i, j);
            end
        end
        
        for j = i + 1 : n
            multiplier = U(j, i) / U(i, i);
            for k = i : n
                U(j, k) = U(j, k) - multiplier * U(i, k);
            end
            L(j, i) = multiplier;
        end
    end
    
    L
    U
    B
    
    temp = B;
    
    for i = 1 : n
       for j = i + 1 : n
           temp(j, 1) = temp(j, 1) - L(j, i) * temp(i, 1);
       end
    end
    
    ret = temp;
    
    for i = n : -1 : 1
        ret(i, 1) = ret (i, 1) / U(i, i);
        for j = i-1 : -1 : 1
            ret(j, 1) = ret(j, 1) - U(j, i) * ret(i, 1);
        end
    end
    
    ret
    
end

