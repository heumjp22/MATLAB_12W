clear;
clc;

x = -5:0.05:5;
y = -5:0.05:5;
[X,Y] = meshgrid(x,y);
Z = exp(-0.08*(X.^2+Y.^2)).*sin(3*X).*cos(2*Y)+0.15*sin(X.*Y);

figure
surf(X,Y,Z)
colorbar; shading interp;
xlabel('x-axis')
ylabel('y-axis')
zlabel('z=f(x,y)')
title('Detailed Surface Plot of a Multivariable Function')
grid on
set(gca,'FontSize',12)
view(45,30)
hold on
surf(X,Y,zeros(size(Z)),'FaceAlpha',0.3,'EdgeColor','none')

[maxZ,idxMax] = max(Z(:))
[minZ,idxMin] = min(Z(:))

maxPoint = [X(idxMax),Y(idxMax),Z(idxMax)]
minPoint = [X(idxMin),Y(idxMin),Z(idxMin)]
plot3(maxPoint(1),maxPoint(2),maxPoint(3),'ro','MarkerSize',10,'LineWidth',2)
plot3(minPoint(1),minPoint(2),minPoint(3),'bo','MarkerSize',10,'LineWidth',2)
legend('Surface','z=0 plane','Maximum point','Minimum point')
saveas(gcf,'complex_surface.png')
