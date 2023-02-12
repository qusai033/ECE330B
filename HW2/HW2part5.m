% Plot for range of 0.01 to 0.5
h = 0.01:0.01:0.5;
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
title('Plot of First and Second Derivative Error versus Step Width h (Range 0.01 to 0.5)');