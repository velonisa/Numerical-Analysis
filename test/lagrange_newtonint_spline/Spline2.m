function result = Spline2(x,y,dy1,dyn)
n=length(x);
for j=1:n-1
    h(j)=x(j+1)-x(j);
end
d(1,1)=6*((y(2)-y(1))/h(1)-dy1)/h(1);   %等式(11)的结果矩阵的上端点值
d(n,1)=6*(dyn-(y(n)-y(n-1))/h(n-1))/h(n-1); %等式(11)的结果矩阵的下端点值
for i=2:n-1
    u(i)=h(i-1)/(h(i-1)+h(i));
    d(i,1)=6*((y(i+1)-y(i))/h(i)-(y(i)-y(i-1))/h(i-1))/(h(i-1)+h(i));
end
A(1,1)=2;
A(1,2)=1;
A(n,n-1)=1;
A(n,n)=2;
for i=2:n-1
    A(i,i-1)=u(i);
    A(i,i)=2;
    A(i,i+1)=1-u(i);
end
