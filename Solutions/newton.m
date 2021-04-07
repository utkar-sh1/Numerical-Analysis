function [root, iter, converged] = newton(f, df, x0, tol, iter_max)
% Calculates the root of an equation by Newton method
%this method is also known as newton_raphson_method
% Inputs:
%         f: Function f(x)
%        df: Derivative of function f(x)
%        x0: Initial guess
%       tol: Tolerance
%  iter_max: Maximum number of iterations
% Outpus:
%      root: Root value
%      iter: Used iterations
% converged: Found the root

    x = x0;
    fx = f(x);
    dfx = df(x);
    %plot
    fplot(f)
    %For showing X anad Y axis
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    
    iter = 0;
    fprintf('iter: %.3d\t x: %.4f\t dfx: %.4f\t fx: %.4f\n', iter, x, dfx, fx);
    format long
    for iter = 1:iter_max
        deltaX = - fx / dfx;
        x = x + deltaX;
        fx = f(x);
        dfx = df(x);

        fprintf('iter: %.3d\t x: %.4f\t dfx: %.4f\t fx: %.4f\t deltaX: %.4f\n', iter, x, dfx, fx, deltaX);

        if (abs(deltaX) <= tol && abs(fx) <= tol) || dfx == 0
            break;
        end
    end

    root = x;

    if abs(deltaX) <= tol && abs(fx) <= tol
        converged = 1;
    else
        warning('Warning: The method did not converge.');
        converged = 0;
    end
end
