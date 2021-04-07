function [sum] = gaussian_Quadrature3(f)
% Inputs:
%         f: Function f(x)
%         a: Initial point
%         b: End point
% Outputs:
     %plot
    fplot(f);
%Use when you want to show x and y axis with origin
   ax = gca;
   ax.XAxisLocation = 'origin';
   ax.YAxisLocation = 'origin';
   
    sum=0;
        x3 = [0.7745966692414834, 0, -0.7745966692414834];
        c3 = [0.5555555555555556, 0.8888888888888888, 0.5555555555555556];
        for j= 1:3
            sum=sum+c3(j).*f(x3(j));
        end
end
     
