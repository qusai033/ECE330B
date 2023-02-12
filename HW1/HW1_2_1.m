x = -5:0.1:5;
f1 = sign(x);
f2 = tanh(x);
f3 = x./(x+1);

plot(x,f1,'r',x,f2,'g',x,f3,'b')
xlabel('x-axis')
ylabel('y-axis')
legend('f1(x)','f2(x)','f3(x)')
