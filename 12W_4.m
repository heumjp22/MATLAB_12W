clear;
clc;

Wine = readtable('wine.data','FileType','text','ReadVariableNames',false);
Wine.Properties.VariableNames = {'Class','Alcohol','MalicAcid','Ash','Alcalinity','Magnesium','Phenols','Flavanoids','Nonflavanoid','Proanthocyanins','ColorIntensity','Hue','OD280','Proline'}
X = [Wine.Alcohol Wine.MalicAcid Wine.ColorIntensity]
X_std = (X-mean(X)) ./ std(X)
[row,~] = size(X_std);
normVec = zeros(row,1);
for i=1:row
    normVec(i) = norm(X_std(i,:));
end
normVec
cutoff = prctile(normVec,90)
T_top = Wine(normVec>=cutoff,:)
T_result = T_top(:,{'Class','Alcohol','MalicAcid','ColorIntensity'})
