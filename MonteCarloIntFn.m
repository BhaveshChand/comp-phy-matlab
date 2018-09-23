% a=0;
% b=pi/2;
% f=@(x)cos(x);
% N=1000000;

% integ = (b-a)/N*sum(f(a + (b-a)*rand(N,1)))

function integ = MonteCarloIntFn(N,a,b,f)
X = a + (b-a)*rand(N,1);
integ = (b-a)/N*sum(f(X));

%bin = a:0.01:b;
%histogram(X,bin)