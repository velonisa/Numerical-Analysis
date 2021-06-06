clear;
clc;
e=1e-3;

a = -1;
b = 0;
x1 = dichotomy(e,a,b,@f1);
disp(x1);
y1 = fixed_point(-1,e,@f1q,100);
disp(y1);
z1 = newton(-1,e,@f1,@f11);
disp(z1);