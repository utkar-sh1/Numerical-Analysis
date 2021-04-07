close all;
clc;
a=input('Enter the function in the form of variable x:','s');
x0=input('Enter x0=');
x1=input('Enter x1=');
tol=input('Enter tolarance=');
itr=input('Enter number of iteration=');
f=inline(a)
p=0;
fplot(a)
for i=1:itr
    x1
    x2=(x0*f(x1)-x1*f(x0))/(f(x1)-f(x0))
    if abs(x2-x1)<tol
        p=1;
        k=i;
        break;
    else
        x0=x1;
        x1=x2;
    end
end

if p==1
    fprintf('Solution is %f at iterations %i',x2,k)
else
    fprintf('No convergent solution exist in the given number iteration')
end