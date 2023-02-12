x = -pi:0.1:pi;
y1 = cos(x);
y2 = secondDeriv(@cos, 0.1, -pi, pi);
y3 = -cos(x);
plot(x, y1, 'b', x, y2, 'g', x, y3, 'r');
legend('cos(x)', 'Numerical second derivative', '-cos(x)');
xlabel('x');
ylabel('y');
title('Plot of cos(x), Numerical second derivative and -cos(x)');