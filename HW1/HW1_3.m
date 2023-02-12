x = 0:0.1:2*pi;
y = 0:0.1:2*pi;
[X,Y] = meshgrid(x,y);
Z = cos(X) .* sin(Y);
figure
surf(X,Y,Z)
xlabel('x-axis')
ylabel('y-axis')
zlabel('z-axis')
view([1 1 1])
title('3D PLOT')