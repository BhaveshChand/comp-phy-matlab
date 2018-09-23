%f=@(x)exp(-x)*(-3*sqrt(3)*sin(sqrt(3)*x)+5*cos(sqrt(3)*x));
% f=@(x)exp(-x)*(cos(sqrt(3)*x)+2*sqrt(3)*sin(sqrt(3)*x));
% a=0;
% b=2;

% f=@(x)2*x+cos(x);
% a=-5;
% b=5;

% f=@(x)exp(-x)-1-x-x^2;
% a=-2;
% b=4;

f=@(x)1/(1+exp(-x^2))+cos(x);
a=-2;
b=4;

eps=1e-8;
N=0;
root=findRootBisectFn(f,a,b,eps,N)