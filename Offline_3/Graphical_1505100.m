x1 = 0 : 1 : 20;
f = @(x) (16 - x) / 2;
y1 = f(x1);
x2 = 0  : 1 : 20;
f = @(x) (9 - x);
y2 = f(x2);
f = @(x) (24 - 3 * x) / 2;
x3 = 0 : 1 : 20;
y3 = f(x3);
plot(x1, y1, x2, y2, x3, y3);
z = @(x,y) 40 * x + 30 * y;