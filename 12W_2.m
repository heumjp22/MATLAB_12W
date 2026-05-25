clear;
clc;

A = [10 200 0.5;12 180 0.7;15 220 0.6;20 250 0.9;25 300 1.1]

colMin = min(A)
colMax = max(A)
A_norm = zeros(5,3);
for i = 1:3
    A_norm(:,i) = (A(:,i)-colMin(i))./(colMax(i)-colMin(i));
end
A_norm
rowMean = mean(A_norm,2)
[~,idx] = max(rowMean)
bestOriginal = A(idx,:)
bestNormalized = A_norm(idx,:)
