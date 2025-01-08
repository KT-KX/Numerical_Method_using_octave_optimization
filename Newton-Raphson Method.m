% HW2
% ID: AIT2209937
% Name: Eng Kuan Tian

clear;
clc;
close all;

disp('AIT2209937 Eng Kuan Tian')

ID = 2209937;
num_of_question = mod(ID, 6) + 1

a = 0;
b = pi/2;

% Define the function f(x) 
f = @(x) x - 0.8 - 0.2*sin(x)

% Define the derivative of f(x) 
df = @(x) 1 - 0.2*cos(x)

% initial guess (a+b)/2
x0 = pi / 4;  

% Set the tolerance and maximum number of iterations
tol = 1e-5;
max_iter = 50;

% Newton's Method with a while loop
x = x0;
iter = 1;

% Printing the header of the table
fprintf('%4s %12s %12s %12s %12s %12s\n', 'n', 'p_n-1', 'f(p_n-1)', "f'(p_n-1)", 'p_n', '|p_n - p_n-1|');

while iter <= max_iter
    fx = f(x);
    dfx = df(x);
    
    % newton formula
    x_new = x - fx / dfx;
    
    % |pn-pn-1|
    diff = abs(x_new - x);
    
    % Print the values in table format for each iteration
    fprintf('%4d %12.8f %12.8f %12.8f %12.8f %12.8f\n', iter, x, fx, dfx, x_new, diff);
    
    % Check if the difference is within the tolerance
    if diff < tol
        break;
    end
    
    % Update for the next iteration
    x = x_new;
    iter = iter + 1;
end

% If the loop ends without convergence
if iter > max_iter
    fprintf('The method failed after %d iterations\n', max_iter);
else
    fprintf('Root found at x = %.8f after %d iterations\n', x_new, iter);
end
