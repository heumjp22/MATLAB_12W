clear;
clc;

Speed = [1.2;1.5;1.7;2.0;2.2;2.4;2.6;2.8;3.0;3.2;3.4;3.6;3.8;4.0;4.2];
Torque = [15;18;21;24;26;29;31;35;38;41;43;47;50;54;58];
SlipRate = [0.08;0.1;0.12;0.15;0.18;0.21;0.22;0.25;0.27;0.30;0.33;0.35;0.39;0.42;0.45];
EnergyUse = [42;48;53;61;66;72;77;85;91;98;105;113;121;130;140];

Robot = table(Speed,Torque,SlipRate,EnergyUse)
X = table2array(Robot)
plotmatrix(X)
varVec = var(X)
[~,idxMax] = max(varVec)
maxVarName = Robot.Properties.VariableNames{idxMax} 
