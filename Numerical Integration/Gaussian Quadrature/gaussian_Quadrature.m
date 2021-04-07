function [I] = gaussian_Quadrature(f, n)
% Inputs:
%         f: Function f(x)
%         a: Initial point
%         b: End point
% Outputs:
%        I: Integral value

%if (b==1 && a==-1) && (n==2 || n==3)
    sum=0;
    sum1=0;
    format long
    if n==2
         x=[0.5773502691896257 -0.5773502691896257];
         c=[1.0000000000000000 1.0000000000000000];
         for i= 1:2
             sum=sum+c(i).*f(x(i));
         end
    else
        x3 = [0.7745966692414834, 0, -0.7745966692414834];
        c3 = [0.5555555555555556, 0.8888888888888888, 0.5555555555555556];
        for j= 1:3
            sum1=sum-2+c3(j).*f(x3(j));
        end
       
    
         
    end
    I=sum;
%else
    %fprint("Error this function is used only for calculating integral in a specefied format")
%end
end
     
