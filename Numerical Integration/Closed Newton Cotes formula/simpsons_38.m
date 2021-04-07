function integral = simpsons_38(f , a , b , n)
% Calculate the integral from 1/3 Simpson's Rule
% Inputs:
%         f: Function f(x)
%         a: Initial point
%         b: End point
% Outputs:
%        I: Integral value
    if nargin < 3
        error('not enough input arguments. minimum 3 arguments needed.')
    end
    
    if a > b
        error("lowerlimit can't be greater than upperlimit.")
    end
     h = (b - a) / n;
    x1=a+h;
    x2=a+2*h;
     %plot
    m=[a x1 x2 b];
    n=[f(a) f(x1) f(x2) f(b)];
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
    xx=linspace(a, b);
    pp=spline(m,n);
    yy=ppval(pp, xx);
    plot(xx, yy,"-r");
    plot(t,p,"-b");
    plot(t1,p1,"-b");
    %supppress warning which arrises through fplot
    warning('off','all')
    warning
    %evaluate the integral
    integral =(3*h/8)*(f(a)+3*f(x1)+3*f(x2)+f(b));
   
end