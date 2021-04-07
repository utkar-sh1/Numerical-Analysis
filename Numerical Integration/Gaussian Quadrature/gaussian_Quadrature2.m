function [sum] = gaussian_Quadrature2(f, n)
% Inputs:
%         f: Function f(x)
%         a: Initial point
%         b: End point
% Outputs:
%        sum: Gaussian Quadrature
    sum=0;
    %plot
     fplot(f);
%Use when you want to show x and y axis with origin
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    format long
         x=[0.5773502691896257 -0.5773502691896257];
         c=[1.0000000000000000 1.0000000000000000];
         for i= 1:n
             sum=sum+c(i).*f(x(i));
         end
    
end
     
