% HW3
% ID: AIT2209937
% Name: Eng Kuan Tian

clear;
clc;
close all;

disp('AIT2209937 Eng Kuan Tian')

ID = 2209937;
num_of_question = mod(ID, 8) + 1

x = -(1/3);
%X = [1.0 1.3 1.6 1.9 2.2]
X = -0.75:0.25:0
F = [-0.07181250 -0.02475000 0.33493750 1.10100000];
N = length(X)
n = N-1
Q = zeros(N,N)
for i = 0:n
    I = i+1;
    Q(I,1) = F(I);
    
end

for i= 1 :n
    I = i+1;
    for j=1:i
        J=j+1;
        Q(I,J) = ((x - X(I-J+1)) * Q(I,J-1) - (x - X(I)) * Q(I-1,J-1)) /(X(I) - X(I-J+1));

    
    end
    
end
for i=1:N
    for j=1:N
        fprintf('%10.7f',Q(i,j))
    end
    fprintf('\n')
end

fprintf('The approximation of f(-1/3) for lagrange interpolation polynomials of degrees three is: %10.7f',Q(4,4))