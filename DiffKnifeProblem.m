clear all;

v=0:0.02:5;
f1=@(x)cos(pi.*x.*x./2);
f2=@(x)sin(pi.*x.*x./2);
N=1000;
i=2;
while (i <= length(v))
    h=v(i)./N;
    %x=linspace(0,v(i),N+1);
    x=0:h:v(i);
    c(i)=h/3*((f1(x(1))+f1(x(N+1))) + 4*sum(f1(x(2:2:N))) + 2 *sum(f1(x(3:2:N))));
    s(i)=h/3*((f2(x(1))+f2(x(N+1))) + 4*sum(f2(x(2:2:N))) + 2 *sum(f2(x(3:2:N))));
    i=i+1;
end

I=0.5*((c+0.5).^2+(s+0.5).^2);

plot(v,I)


