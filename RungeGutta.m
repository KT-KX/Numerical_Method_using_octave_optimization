% HW3
% ID: AIT2209937
% Name: Eng Kuan Tian

clear;
clc;
close all;

disp('AIT2209937 Eng Kuan Tian')

ID = 2209937;
num_of_question = mod(ID, 8) + 1


% Initial value problem
% y' = 1 + (t - y)^2, 2 <= t <= 3, y(2) = 1, with h = 0.5

% MATLAB/Octave code to solve Question 2 using the Runge-Kutta Method (Order 4)
exact = @(t) t + 1./(1 - t)
% Define the function for the differential equation
dydt = @(t, y) 1 + (t - y)^2;

% Initial conditions
t0 = 2; % initial t
y0 = 1; % initial y
h = 0.5; % step size

% Interval for t
t_end = 3;

% Number of steps
n_steps = (t_end - t0) / h;

% Initialize arrays to store t and y values
t = t0;
y = y0;
t_values = t;
y_values = y;

% Runge-Kutta Method of Order 4
for i = 1:n_steps
    k1 = h * dydt(t, y);
    k2 = h * dydt(t + h/2, y + k1/2);
    k3 = h * dydt(t + h/2, y + k2/2);
    k4 = h * dydt(t + h, y + k3);

    % Update y and t values
    y = y + (k1 + 2*k2 + 2*k3 + k4) / 6;
    t = t + h;

    % Store the results
    t_values = [t_values, t];
    y_values = [y_values, y];
end

% Exact solution function
exact_solution = @(t) t + 1./(1 - t);
exact_values = exact_solution(t_values);

% Compute errors
errors = abs(y_values - exact_values);

% Display the results
disp('Results of Runge-Kutta Method:');
disp(' t          exact         RK4          Error');
for i = 1:length(t_values)
    fprintf('%6.2f    %10.6f    %10.6f    %10.6f\n', t_values(i), exact_values(i), y_values(i), errors(i));
end

% Plot the results
figure;
plot(t_values, y_values, '-o', 'LineWidth', 1.5);
hold on;
plot(t_values, exact_values, '-r', 'LineWidth', 1.5);
legend('Runge-Kutta Approximation', 'Exact Solution');

title('Runge-Kutta Method (Order 4) for Question 2');
xlabel('t');
ylabel('y');
grid on;
