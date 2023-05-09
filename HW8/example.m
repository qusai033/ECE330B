% for plotFun

plotFun(-500, 500, -500, 500);



%for SA
% Define the function to be optimized
f = @(x) sin(2*pi*x(1))^2 * sin(2*pi*x(2))^2 / (x(1)^2 + x(2)^2)^0.5;

% Define the problem dimension and domain
dim = 2;
domain = [-5, 5];

% Define the initial point and SA parameters
start = [-4, 4];
T0 = 1;
Lambda = 0.95;
minTemp = 1e-5;

% Run the SA algorithm to find the minimum
min = SA(f, dim, domain, start, T0, Lambda, minTemp);

% Display the minimum found
fprintf('Minimum found: %f\n', min);
