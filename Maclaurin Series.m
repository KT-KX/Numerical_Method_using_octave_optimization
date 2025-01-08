% hw1
% ID: AIT2209937
% Name: Eng Kuan Tian

clear;
clc;
close all;

disp('AIT2209937 Eng Kuan Tian')

% Input

x = 1.5
TOL = 1.0E-5  %10^(-5)
M = 50

% Step 1
N = 1;
y = x-1
SUM = 0;
POWER = y;
TERM = y;
SIGN = -1;
OK = false;

%step 2
while N <=M
   %step 3
   SIGN = -SIGN;
   SUM = SUM + SIGN * TERM;


   POWER = POWER * y;
   TERM = POWER / (N + 1);

   % Step 4
   if abs(TERM) < TOL
       fprintf('The minimal value of N is: %d\n', N);
       return;
   end

    % Step 5:
    N = N + 1;
end

% Step 6
fprintf('Method Failed. The procedure was unsuccessful.\n');
