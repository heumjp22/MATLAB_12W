clear;
clc;

Epoch = [1;2;3;4;5;6;7;8];
LossA = [2.4;1.95;1.62;1.31;1.05;0.86;0.7;0.58];
LossB = [2.55;2.1;1.8;1.5;1.25;1.03;0.86;0.72];
LossC = [2.7;2.2;1.9;1.63;1.42;1.21;1.05;0.93];
AccA = [0.42;0.5;0.58;0.64;0.7;0.75;0.79;0.82];
AccB = [0.4;0.47;0.53;0.6;0.66;0.7;0.74;0.78];
AccC = [0.38;0.45;0.51;0.57;0.62;0.67;0.7;0.73];

TrainLog = table(Epoch,LossA,LossB,LossC,AccA,AccB,AccC)
figure
t = tiledlayout(2,1);
nexttile
plot(Epoch,LossA,Epoch,LossB,Epoch,LossC);
legend('LossA','LossB','LossC')
xlabel('Epoch')
ylabel('Loss')
title('Epoch vs Loss')
grid on
nexttile
plot(Epoch,AccA,Epoch,AccB,Epoch,AccC);
legend('AccA','AccB','AccC')
xlabel('Epoch')
ylabel('Acc')
title('Epoch vs Acc')
grid on
title(t,'Training Dashboard')
