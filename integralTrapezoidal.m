f=@(x)4*sqrt(1-x^2);
a=0;
b=1;
N=255;

h=(b-a)/N;

i=0;
int=0;
while i<N,
    int=int+h*(f(a+i*h)+f(a+(i+1)*h))/2;
    i=i+1;
end
int
err=(int-pi)/pi