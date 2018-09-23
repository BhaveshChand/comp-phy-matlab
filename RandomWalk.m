m=1000;
n=100;
x=zeros(m,n+1);
a=rand(m,n);
prob=0.2;

for i = 1:m
    for j = 2:n+1
        if a(i,j-1)<=prob
            step=-1;
        else 
            step=1;
        end
        x(i,j)=x(i,j-1)+step;
    end
end

for i = 1:n+1
    dispsq(i)=sum(x(:,i).*x(:,i))/m;
end

plot(0:n,dispsq)

P=polyfit(0:n,dispsq,1);

diffcoeff=P(1)/2
        
        