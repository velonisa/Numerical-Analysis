function[y] = Lagrange(x)
a = [25 40 50 60];
b = [95 75 63 54];
n = 4;
sum = 0;
for k = 1:n
    pro = 1;
    for i = 1:n
        if i ~=k
            pro = pro * (x-a(i))/(a(k)-a(i));
        end
    end
    sum = sum + pro * b(k);
end
y = sum;
end
