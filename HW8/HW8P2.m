dim = 10;
domain = [0,pi];
start = [0,0,0,0,0,0,0,0,0,0];
T0 = 10^7;
Lambda = 0.9;
minTemp = 1;
result = SA(@Funct,dim,domain,start,T0,Lambda,minTemp)

a = 0;
b = pi;
for i = 1:10
    start = a + (b-a)*rand(1,10)
    Min = SA(f,dim,domain,start,T0,Lambda,minTemp)
end
