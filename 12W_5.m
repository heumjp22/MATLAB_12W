clear;
clc;

rng(1);

y = 50 + 5*randn(100,1);
y(10,1) = 90;
y(25,1) = 95;
y(40,1) = 5;
y(70,1) = 100;
y(90,1) = 0;

Q1 = quantile(y,0.25);
Q3 = quantile(y,0.75);
IQR_val = Q3 - Q1
lower = Q1 - 1.5*IQR_val
upper = Q3 + 1.5*IQR_val

idx_outlier = (y<lower | y>upper);
y_clean = y(~idx_outlier)
med_clean = median(y_clean)
