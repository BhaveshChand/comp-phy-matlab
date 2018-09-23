m=1000;
n=100;
x=zeros(m,n+1);
y=zeros(m,n+1);
a=rand(m,n);

for i = 1:m
    for j = 2:n+1
        if a(i,j-1)<=0.25
            stepx=1;
            stepy=0;
        elseif a(i,j-1)<=0.5
            stepx=0;
            stepy=1;
        elseif a(i,j-1)<=0.75
            stepx=-1;
            stepy=0;
        else
            stepx=0;
            stepy=-1;
        end
        x(i,j)=x(i,j-1)+stepx;
        y(i,j)=y(i,j-1)+stepy;
    end
end

for i = 1:n+1
    dispsq(i)=sum(x(:,i).^2+y(:,i).^2)/m;
end

plot(0:n,dispsq)

P=polyfit(0:n,dispsq,1);

diffcoeff=P(1)/4
        
        