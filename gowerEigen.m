warning("off")
a = 1;
b=.1;
c = 1;
e=2.5;

x0 = 80;
y0 = 20;

syms x y
vars = [x, y];
eqs = [a*x-b*x*y == 0, (c-e*(y/x))*y ==0 ];
[xc, yc] = solve(eqs(1), eqs(2));
[xc, yc]
yc = 0
%form jacobian
tL = a-b*yc;
tR = -b*xc; 
bL = (e*yc^2)/(xc^2);
bR = c-(2*e*yc)/xc;
%solve jacobian
A = [[tL tR];[bL bR]];
A
eig(A)