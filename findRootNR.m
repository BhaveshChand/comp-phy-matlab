% A=input('No. to find root of: ');
% n=input('To find n=?th root: ');
% f=@(x)x^n-A;
% df=@(x)n*(x^(n-1));
% c=0;

% f=@(x)2*x+cos(x);
% df=@(x)2-sin(x);
% c=0;

% f=@(x)x*sin(x)-1;
% df=@(x)sin(x)+x*cos(x);
% c=1;

f=@(x)exp(-x)-1-x-x^2;
df=@(x)-exp(-x)-1-2*x;
c=1;

eps=1e-8;
root = findRootNRFn(f,df,c,eps)
