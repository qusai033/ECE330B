% Plot for range of 0.00001 to 0.01
h = 0.00001:0.0001:0.01;
first_error = zeros(1, length(h));
second_error = zeros(1, length(h));
for i = 1:length(h)
first_error(i) = firstDerivError(@cos, h(i), -pi, pi);
second_error(i) = secondDerivError(@cos, h(i), -pi, pi);
end

figure;
plot(h, first_error, 'b', h, second_error, 'g');
legend('First Derivative Error', 'Second Derivative Error');
xlabel('Step Width h');
ylabel('Sum of Squared Error');
title('Error versus Step Width h (Range: 0.00001 to 0.01)');