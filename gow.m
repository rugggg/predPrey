function yp = gow(t,y,a,b,c,e)

%this file is a function definition
%for using with solving a system of ODE

xx = y(1);
yy = y(2);

yp1 = a*xx-b*xx*yy; %yp1 and yp1 are your system of ODEs, these will 
yp2 = (c-e*(yy/xx))*yy; %have the most impact on the graph and result 
yp = [yp1; yp2];