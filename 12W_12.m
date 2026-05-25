clear;
clc;

rng(1);

t = (1:120)';
signal = 30 + 4*sin(t/8) + randn(120,1);
signal(15)=NaN;
signal(45)=NaN;
signal(90)=NaN;
signal(30)=80;
signal(75)=-20;
signal(110)=95;
signal
idxMissing = isnan(signal);
numMissing = sum(idxMissing);
mu0 = mean(rmmissing(signal))
signalFilled = fillmissing(signal,'constant',mu0);
signalFilled
idxOutlier = abs(signalFilled-mean(signalFilled))> 3*std(signalFilled);
signalClean = signalFilled;
signalClean(idxOutlier) = NaN;
validSignal = rmmissing(signalClean);
normSignal = (validSignal-min(validSignal))./(max(validSignal)-min(validSignal));
finalMean = mean(normSignal)
finalVar = var(normSignal)

figure
tl = tiledlayout(2,1);
nexttile;
plot(validSignal)
xlabel('Index')
ylabel('Value')
grid on
title('ValidSignal')
nexttile;
plot(normSignal)
xlabel('Index')
ylabel('Value')
grid on
title('normSignal')
title(tl,'Signal Cleaning and Normalization')
