%contains method for finding root using Fixed Point Interval
function root=findRootFPIFn(f,x,a,b,N,eps)
g=@(x)x-f(x);
i=1;
flag=1;
steps=[];
while flag,
    c(i)=x;
    x=g(c(i));
    steps=[steps;c(i),c(i);c(i),x];
    if abs(c(i)-g(c(i)))<eps & i>=N
        root=c(i);
        flag=0;
    end
    i=i+1;
end
fplot(@(x)x,[a,b])
hold on
fplot(g,[a,b])
plot(steps(:,1),steps(:,2))