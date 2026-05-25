clear;
clc;

x = [21 22 NaN 23 24 120 25 NaN 26 27];
idx_missing = isnan(x)
mu0= mean(rmmissing(x))
sig0 = std(rmmissing(x))
idx_outlier = abs(x-mu0) > 3*sig0
x_temp = x;
x_temp(idx_missing | idx_outlier) = NaN
mu_temp = mean(rmmissing(x_temp))
x_clean = fillmissing(x_temp,'constant',mu_temp)
mu_clean = mean(x_clean)
sig_clean = std(x_clean)
figure
plot(x,'o-','LineWidth',2)
hold on
plot(x_clean,'s--','LineWidth',2)
xlabel('Index')
ylabel('Value')
legend('Original x','Cleaned x')
title('Original vs Cleaned Data')
grid on
