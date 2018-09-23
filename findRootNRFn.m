function root = findRootNRFn(f,df,c,eps)
i=1;
flag=1;
x(1)=c;
while flag,
    x(i+1)=x(i)-f(x(i))/df(x(i));
    if abs((x(i+1)-x(i))/x(i))<eps
        root=x(i+1)
        flag=0;
    end
    i=i+1;
end
i
