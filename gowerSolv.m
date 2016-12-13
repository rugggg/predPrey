% Use ode45 to solve our ODE
% Place the time points in a vector 't'
% Place the solution in a vector 'x'
options = odeset('RelTol', 1e-4,'NonNegative', [1 2]);


%   dx/dt = ax - bxy - cx^2
%   dy/dt = ny + mxy - py^2
%
%   
%   x = (p-n)/m    y = (a/b)+c(n-p)/bm
%   x = a/c        y = 0
time_range = [0 50];
x0y0 = [100 2];

a = 1; 
b = .1; 
c = 1;
e = 2.5;

[t,pops] = ode45(@gower, time_range, x0y0,a,b,c,e, options);
figure
subplot(2,1,1)
plot(t,pops);
legend('rabbits', 'foxes');


for i=1:10
    for j=1:10
        [t,y]=ode45(@gow,[0 15],[i,j],a,b,c,e); %first arg is range to plot, second is intial condition
        subplot(2,1,2)
        plot(y(:,1),y(:,2),'b');
        hold on
    end
end
