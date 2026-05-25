clear;
clc;

A = [3 -1 5 -2 4;-4 6 -3 2 1;7 -5 8 -1 0;-2 4 -6 9 3;5 -3 2 -4 6];

A_clean = A;

[row,col] = size(A_clean);

for i = 1:row
    for j = 1:col
        if A_clean(i,j) < 0
             A_clean(i,j) = 0;
        end
    end
end

A
A_clean
