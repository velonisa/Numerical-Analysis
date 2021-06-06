function[x] = G_S(a,b,x0,e,M)
n = size(a,1);
x = zeros(n,1);
for m = 1:M
    for i = 1:n
        s = 0;
        t = 0;
        for j = 1:i-1
            s = s + a(i,j)*x(j);
        end
        for j = i+1:n
            t = t + a(i,j)*x0(j);
        end
        x(i) = -(s + t - b(i))/a(i,i);
    end
    if norm(x-x0,Inf) < e
        break;
    else
        x0 = x;
    end
end
end

        