function [I] = trapezoidal(f, b, a, n)
% Calculate the integral from Trapezoidal Rule
% Inputs:
%         f: Function f(x)
%         a: Initial point
%         b: End point
% Outputs:
%        I: Integral value
    h = (b - a)/n;
    %plot
    m=[a b];
    n=[f(a) f(b)];
    t=[a a];
    p=[0 f(a)]; 
    t1=[b b];
    p1=[0 f(b)];
    fplot(f);
    %Use when you want to show x and y axis with origin
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    hold on
    plot(m,n,"-o");
    plot(t,p,"-b");
    plot(t1,p1,"-b");
    hold off
    format long
   I = h / 2 * (f(a) + f(b));
end

