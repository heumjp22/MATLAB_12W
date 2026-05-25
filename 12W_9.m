clear;
clc;

T = readtable('train.csv');
numMissingAge = sum(isnan(T.Age))
mu0 = mean(rmmissing(T.Age))
T.Age = fillmissing(T.Age,'constant',mu0);
muFare = mean(T.Fare)
sigFare = std(T.Fare)

T_clean = T(abs(T.Fare-muFare)<=3*sigFare,:)
meanAge0 = mean(T_clean{T_clean.Survived==0,'Age'})
meanAge1 = mean(T_clean{T_clean.Survived==1,'Age'})
meanAge = [meanAge0;meanAge1];
Result = table(unique(T.Survived),meanAge,'VariableNames',{'Survived','MeanAge'})
