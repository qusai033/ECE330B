x = -pi:0.1:pi;
y1 = cos(x);
y2 = firstDerivImproved(@cos, 0.1, -pi, pi);
y3 = -sin(x);
plot(x, y1, 'b', x, y2, 'g', x, y3, 'r');
legend('cos(x)', 'Improved Numerical derivative', '-sin(x)');
xlabel('x');
ylabel('y');
title('Plot of cos(x), Improved Numerical derivative and -sin(x)');