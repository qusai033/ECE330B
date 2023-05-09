% Define the function to be optimized
f = @(x,y) -x * sin(sqrt(abs(x))) - y * sin(sqrt(abs(y)));

% Define the domain
domain = [-500, 500];

% Define the starting point
start = [250; 250];

% Define the range of T0 and Lambda values to be tested
T0_values = linspace(10, 100, 10);
Lambda_values = linspace(0.9, 0.99, 10);

% Initialize the table
results_table = zeros(length(T0_values), length(Lambda_values));

% Run SA algorithm for each combination of T0 and Lambda values
for i = 1:length(T0_values)
    for j = 1:length(Lambda_values)
        % Set the current values of T0 and Lambda
        T0 = T0_values(i);
        Lambda = Lambda_values(j);
        
        % Run SA algorithm
        min_found = SA(f, 2, domain, start, T0, Lambda, 0.1);
        
        % Store the minimum found in the table
        results_table(i, j) = min_found;
    end
end

% Display the table
disp(results_table);
