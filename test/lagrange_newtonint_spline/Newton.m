function[y] = Newton(x)
n = 10;
T = zeros(n,n);
a = 1994:2004;
b = [67.052 68.008 69.803 72.024 73.400 72.063 74.669 74.487 74.065 76.777];
for i = 1:n
    T(i,1) = b(i);
end
for i = 2:n
    for j = 2:i
        T(i,j) = (T(i-1,j-1)-T(i,j-1))/(a(i-j+1)-a(i));
    end
end
sum = b(1);
pro = ones(n-1,1);
pro(1) = x-a(1);
for i = 2:n-1
    pro(i) = pro(i-1) * (x-a(i));
end
for i = 2:n
    sum = sum + T(i,i)*pro(i-1);
end
y = sum;
end
