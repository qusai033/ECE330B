%B = 0 h = 0.1
data = Euler_Method(1, 3, 0, 2, 0, 15, 0.1, 1);

%IEM at h=0.1
data = Euler_Method_II(1, 3, 0, 2, 0, 15, 0.1);

%RK4 at h=0.1
data = RK4(1, 3, 0, 2, 0, 15, 0.1);



r = 0.0001:0.0001:0.1;
for i = 1:numel(r)
    temp = EM(1, 3, 0, 2, 0, 5, r(i),0);
    dis = transpose(temp(:,2));
    err(i) = max(dis)/2;
end
j = 1;
while(err(j) < 1.01)
    j = j + 1;
end
r(j)
