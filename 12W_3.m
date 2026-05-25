clear;
clc;

Channel = ["CH1";"CH2";"CH3";"CH4";"CH5";"CH6";"CH7";"CH8"];
Signal = [18.2;15.5;21.0;11.7;25.3;19.4;28.6;16.8];
Noise = [2.1;3.4;2.8;4.2;3.0;5.1;2.9;3.7];

T = table(Channel,Signal,Noise)
T.SignalToNoise = T.Signal ./ T.Noise
meanSNR = mean(T.SignalToNoise)
T_high = T(T.SignalToNoise>meanSNR,:)
snrVec = T_high{:,'SignalToNoise'}
varSNR = var(snrVec)
