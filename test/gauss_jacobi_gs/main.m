clear;
clc;
e = 1e-3;
A1 = [2 -2 -1;4 1 -2;-2 1 -1];
b1 = [-2; 1; -3];
[x1] = gauss(A1,b1);
disp('Gauss:');
disp(x1);
y10 = [1;1;1];
disp('Jacobi:');
[y1] = Jacobi(A1,b1,y10,e,100);
disp(y1);
disp('G_S:');
[z1] = G_S(A1,b1,y10,e,100);
disp(z1);

n=100;
A = diag(3*ones(100,1)) + diag(-ones(99,1),-1) + diag(-ones(99,1),1);
b = ones(100,1);
b(1) = 2;
b(100) = 2;
x = zeros(100,1);
B = [A,b];
for k = 1 : n - 1
    B(k + 1 : n , k : n + 1) =  B(k + 1 : n , k : n + 1) - B(k + 1 : n , k) / B(k,k) * B(k, k : n + 1);
    B(k + 1 : n , k) = zeros(n - k , 1);
end

A2 = B(:,1:n);
b2 = B(:,n+1);

[x2] = gauss(A2,b2);
disp('Gauss');
disp(x2);
y20 = ones(n,1);
disp('Jacobi:');
[y2] = Jacobi(A2,b2,y20,e,100);
disp(y2);
disp('G_S:');
[z2] = G_S(A2,b2,y20,e,100);
disp(z2);