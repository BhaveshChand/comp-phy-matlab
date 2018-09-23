%f=@(x)(pi*x*sqrt(81+x^2))-750;
%df=@(x)pi*(sqrt(81+x^2)+(x^2/sqrt(81+x^2)));
%x=0;

% f=@(x)cos(10*x)-5*sin(10*x)-2;
% df=@(x)-50*cos(10*x)-10*sin(10*x)
% x(1)=0.3;

eps=1e-8;

i=1;
flag=1;
while flag,
    x(i+1)=x(i)-f(x(i))/df(x(i));
    if abs((x(i+1)-x(i))/x(i))<eps
        root=x(i+1)
        flag=0;
    end
    i=i+1;
end
i
