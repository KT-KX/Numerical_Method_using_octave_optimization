% HW3
% ID: AIT2209937
% Name: Eng Kuan Tian

clear;
clc;
close all;

disp('AIT2209937 Eng Kuan Tian')

ID = 2209937;
num_of_question = mod(ID, 8) + 1


% Define the matrix A
A = [1.012, -2.132, 3.104;
    -2.132, 4.096, -7.013;
     3.104, -7.013, 0.014]

% Initialize matrices L and U
n = size(A, 1); % Number of rows/columns
L = eye(n);     % Start with L as identity matrix
U = A;          % Start with U as A

% Perform Gaussian elimination to compute L and U
for k = 1:n-1
    for i = k+1:n
        % Compute the multiplier for row operations
        L(i, k) = U(i, k) / U(k, k);
        % Update the rows of U
        U(i, :) = U(i, :) - L(i, k) * U(k, :);
    end
end

% Display the results
disp('Matrix L (Lower triangular):');
disp(L);

disp('Matrix U (Upper triangular):');
disp(U);

% Verify that A = L * U
disp('Verification (L * U):');
disp(L * U);
