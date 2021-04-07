function [x, iter] = jacobi(a, b, x0, tol, iter_max)
% Jacobi method: solve Ax = b given an initial approximation x0
% Inputs:
%         a: Matrix A from system Ax=b like[1 2 3; 3 2 5; 5 4 7]
%         b: Array containing b values [6; 5; 9]
%        x0: Initial approximation of solution[0; 0; 0]
%       tol: Tolerance
%  iter_max: Maximum number of iterations say 5 or 10 or 15
% Outpus:
%         x: Solution of linear system
%      iter: Used iterations

    % D and M matrices
    d = diag(diag(a));% d is diagonal matrix 
    m = a - d; % m is a matrix with rest of the elements

    % Iterative process
    for iter = 1:iter_max
        x = d \ (b - m * x0);  % "A\B" is the same as "INV(A)*B"
         fprintf('iter: %.3d\n', iter');
         

        if norm(x - x0, inf) / norm(x, inf) <= tol
            break;
        end
        x0 = x;
    end
end
