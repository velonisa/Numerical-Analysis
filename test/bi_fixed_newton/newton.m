function[X] =  newton(x0,e,f,f1)
x1 = x0 - f(x0)/f1(x0);
N = 100;
n=1;
while n<=N
    if abs(x1-x0)<e
        break;
    end
    x0 = x1;
    x1 = x0 - f(x0)/f1(x0);
    n = n+1;
end
X = x1;
end
    