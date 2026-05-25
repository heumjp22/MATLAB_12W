clear;
clc;

Material = ["A";"A";"A";"A";"B";"B";"B";"B";"C";"C";"C";"C"];
EnergyDensity = [245;252;238;260;310;295;305;318;180;190;176;185];
Battery = table(Material,EnergyDensity)
A = strcmp(Battery.Material,'A');
B = strcmp(Battery.Material,'B');
C = strcmp(Battery.Material,'C');

meanA = mean(Battery{A,'EnergyDensity'})
meanB = mean(Battery{B,'EnergyDensity'})
meanC = mean(Battery{C,'EnergyDensity'})
mean_total = [meanA;meanB;meanC];
stdA = std(Battery{A,'EnergyDensity'})
stdB = std(Battery{B,'EnergyDensity'})
stdC = std(Battery{C,'EnergyDensity'})
std_total = [stdA;stdB;stdC];
Summary = table(unique(Material),mean_total,std_total,'VariableNames',{'Material','MeanEnergyDensity','StdEnergyDensity'})

G = groupsummary(Battery,'Material',{'mean','std'},'EnergyDensity')
