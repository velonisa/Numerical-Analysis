clear;
clc;
y0 = Lagrange(70);
y0 = roundn(y0,-1);
disp(y0);
y1 = Newton(2010);
disp(y1);
x = [0 1 2 3];
y = [3 5 4 1];
dy1 = 1;
dyn = 1;
xx = 0:0.1:3;
% f = SplineThree(x,y,xx);
% disp(f);
for i=1:31
     yy(i) = SplineThree(x,y,xx(i));
end
plot(xx,yy,'-');
% 
% yy2 = spline(x,y,xx);
% % plot(xx,yy2);
% yy = threesimple(x,y,xx)
% plot(xx,yy)