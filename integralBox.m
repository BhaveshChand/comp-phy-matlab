% f=@(x)cos(x);
% a=0;
% b=pi/2;

f=@(x)sqrt(1-x^2);
a=0;
b=1;
N=1e2;

h=(b-a)/N;

i=0;
int=0;
while i<N,
    int=int+h*f(a+i*h);
    i=i+1;
end
int
err=(pi-4*int)/pi