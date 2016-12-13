warning("off")
a = 3; 
b = 4; 
c = 0;
n = 1;
m = 1;
p = 1;

syms x y
vars = [x, y];
eqs = [x*(a-b*y-c*x) == 0,y*(n+m*x-p*y) == 0];
[xc, yc] = solve(eqs(1), eqs(2));
disp("Critical Points: ")
[xc, yc]

for i = 1:size(xc)(1)
  warning("off")
  %form jacobian
  disp("X:")
  xc(i)
  disp("Y:")
  yc(i)
  tL = a-b*yc(i)-2*c*xc(i);
  tR = -b*xc(i); 
  bL = n+m*yc(i)-2*p*xc(i);
  bR = m*xc(i);
  %solve jacobian
  A = [[tL tR];[bL bR]];
  disp("Jacobian: ")
  A
  disp("EigenValues: ")
  eig(A)
end