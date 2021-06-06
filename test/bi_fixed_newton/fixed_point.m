function[X] = fixed_point(x0,e,f,N)
x1 = f(x0);
n=1;
while n<=N
    x0 = x1;
    x1 = f(x0);
    if abs(x1-x0)<e
        break;
    end
    n = n+1;
end
X = x1;
end
