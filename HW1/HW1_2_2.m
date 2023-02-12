x = -5:0.1:5;
f1 = sign(x);
f2 = tanh(x);
f3 = x./(x+1);

subplot(3,1,1)
plot(x,f1,'r')
xlabel('x-axis')
ylabel('y-axis')
title('f1(x)')

subplot(3,1,2)
plot(x,f2,'g')
xlabel('x-axis')
ylabel('y-axis')
title('f2(x)')

subplot(3,1,3)
plot(x,f3,'b')
xlabel('x-axis')
ylabel('y-axis')
title('f3(x)')
