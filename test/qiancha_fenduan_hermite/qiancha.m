function qiancha = qiancha(x0)
x = 0:0.1:0.5;
y = cos(x);
n = 6;
T = zeros(n,n);
for i = 1:n
    T(i,1) = y(i);
end
for i = 2:n
    for j = 2:i
        T(i,j) = T(i,j-1)-T(i-1,j-1);
    end
end
sum = y(1);
t = (x0-x(1))/0.1;
pro = 1;
for i = 1:n-1
    pro = pro * (t-i+1)/i;
    sum = sum + T(i+1,i+1)*pro;
end
qiancha = sum;