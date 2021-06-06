function[X] = dichotomy(e,a,b,f)
%dichotomy
N = fix(log2((b-a)/e)) +1;
n = 1;
x = 0;
fa = f(a);
fb = f(b);
if fa * fb > 0
    disp('false');
else
    while n<=N
        x = (a+b)/2;
        if fa * f(x) > 0
            a = x;
        else
            b = x;
        end
    n = n+1;
    end
end
X = x;
end
    