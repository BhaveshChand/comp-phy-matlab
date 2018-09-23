clear all

f=@(x)cos(x);
fa=0;
fb=pi/2;

g=@(x)4*sqrt(1-x.^2);
ga=0;
gb=1;

I0f=1;
I0g=pi;

pow=1:7;

i=1;
while i<=7
    N(i)=10^i;
    intf(i)=MonteCarloIntFn(N(i),fa,fb,f);
    intg(i)=MonteCarloIntFn(N(i),ga,gb,g);
    i=i+1;
end

ferr = abs(intf/I0f-1);
gerr = abs(intg/I0g-1);

plot(pow,ferr,pow,gerr)