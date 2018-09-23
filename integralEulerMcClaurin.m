f=@(x)sqrt(1-x^2);
df=@(x)(-2)*x/sqrt(1-x^2);
a=0;
b=1;
N=100;

h=(b-a);

i=0;
int=0;
while i<N,
    int=int+h*(f(a+i*h)+f(a+(i+1)*h))/2;
    i=i+1;
end
int=int+(h^2)/2*(df(a)/-df(b)) 
err=(pi-4*int)/pi