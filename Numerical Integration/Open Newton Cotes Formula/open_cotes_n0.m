function [I] = open_cotes_n0(f, b, a, n)
% Calculate the integral from 1/3 Simpson's Rule
% Inputs:
%         f: Function f(x)
%         a: Initial point
%         b: End point
% Outputs:
%        I: Integral value

    h = (b - a) / (n+2);
    x0=a+h;
     %plot
   % m=[a x b];
   % n=[f(a) f(x) f(b)];
    %t=[a a];
    %p=[0 f(a)]; 
    %t1=[b b];
    %p1=[0 f(b)];
    fplot(f);
        %Use when you want to show x and y axis with origin
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    %hold on
    %xx=linspace(a, b);
    %pp=spline(m,n);
    %yy=ppval(pp, xx);
    %plot(xx, yy,"-r");
    %plot(t,p,"-b");
    %plot(t1,p1,"-b");
    format long
    I = 2*h *f(x0);
end
