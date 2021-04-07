%this is a divided difference table generator
%output is table
x1 = [1:0.3:2.2];
f1 = [0.7651977 0.6200860 0.4554022 0.2818186 0.110323];
    [row, col] = size(x1);
    F(1:col, 1:col) = 0;
    %populate the first column
    for q = 1:col
        F(q, 1) = f1(q);
    end
    
    %compute
    for i = 2:col
        for j = 2:i 
            F(i, j) = (F(i, j-1) - F(i-1, j-1))/(x1(i) - x1(i-j+1));
        end
    end
    F
    
    
    