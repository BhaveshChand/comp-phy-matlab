m=1000;
n=100;
x=zeros(m,n+1);
prob=0.5;
stepsize=0.1:0.1:1;

for stepi = 1:10
    a=rand(m,n);
    for i = 1:m
        for j = 2:n+1
            if a(i,j-1)<=prob
                step=-stepi/10;
            else 
                step=stepi/10;
            end
            x(i,j)=x(i,j-1)+step;
        end
    end

    for i = 1:n+1
        dispsq(i)=sum(x(:,i).*x(:,i))/m;
    end

    plot(0:n,dispsq)
    hold on
    P=polyfit(0:n,dispsq,1);

    diffcoeff(stepi)=P(1)/2;
        
end

Q=polyfit(stepsize,diffcoeff,2)