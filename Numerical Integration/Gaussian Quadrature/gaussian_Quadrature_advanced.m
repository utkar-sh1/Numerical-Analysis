function [sum] = gaussian_Quadrature_advanced(f, a, b, N)
% Inputs:
%         f: Function f(x)
%         a: Initial point
%         b: End point
% Outputs:
sum=0;
%plot
fplot(f);
%Use when you want to show x and y axis with origin
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
[x,c]=lgwt(N,a,b);
warning('query','all')
format long
for i= 1:N
    sum=sum+c(i).*f(x(i));
end

end

