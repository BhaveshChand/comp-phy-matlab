function root = findRootBisectFn(f,a,b,eps,N)
c1=(a+b)/2;
i=1;
flag=1;
while flag,
    mid(i)=c1;
    low(i)=a;
    high(i)=b;
    x(i)=i;
    if f(c1)==0
        root=c1;
        flag=0;
    elseif (sign(f(a)*f(c1))==-1)
        b=c1;
    elseif (sign(f(c1)*f(b))==-1)
        a=c1;
    end
    c2=c1;
    c1=(a+b)/2;
    if (abs(f(c1))<eps) & (abs(c2-c1)/abs(c1)<eps) & (i>=N)
        root=c1;
        flag=0;
    end
    i=i+1;
end
%i
%plotyy(x,high-low,x,mid)