function[x] = Jacobi(A,b,x0,e,M)
n = size(A,1);
x = zeros(n,1);
for i = 1:n
    s=0;
    for j = 1:n
        if j~=i
            s = s + A(i,j)*x0(j);
        end
    end
    x(i) = -(s-b(i))/A(i,i);
end
m = 2;
while m<M
    if norm(x-x0,Inf)<e
        break;
    else
        x0 = x;
        for i = 1:n
        s=0;
            for j = 1:n
                if j~=i
                    s = s + A(i,j)*x0(j);
                end
            end
        x(i) = -(s-b(i))/A(i,i);
        end
    end
    m = m+1;
end
end
