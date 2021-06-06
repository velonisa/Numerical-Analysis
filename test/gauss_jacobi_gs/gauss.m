function[x] = gauss(A,b)
n = size(A,1);
x = zeros(n,1);
for k = 1:n-1
    for i = k+1:n
        m = A(i,k)/A(k,k);
        A(i,k+1:n) = A(i,k+1:n) - m * A(k,k+1:n);
        b(i) = b(i) - m * b(k);
    end
end
x(n) = b(n)/A(n,n);
for i = n-1:-1:1
    s = 0;
    for j = i+1:n
        s = s + A(i,j)*x(j);
    end
    x(i) = (b(i)-s)/A(i,i);
end
end
    