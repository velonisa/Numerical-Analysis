function result = Hermit(x0)
x = 0:0.1:0.5;
y = cos(x);
y1 = -sin(x);
n=6;
for i = 1:n-1
    if x0 >x(i) && x0 < x(i+1)
          xk = x0-x(i);
          xk1 = x0-x(i+1);
          kk1 = x(i)-x(i+1);
          k1k = -kk1;
          r1 = y(i)*(1+2*xk/k1k)*(xk1/kk1)^2;
          r2 = y(i+1)*(1+2*xk1/kk1)*(xk/k1k)^2;
          r3 = y1(i)*xk*(xk1/kk1)^2;
          r4 = y1(i+1)*xk1*(xk/k1k)^2;
        result = r1+r2+r3+r4;
        break;
    end
end
end

        
    