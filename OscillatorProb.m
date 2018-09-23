clear all

f=@(k,x) 4.*sqrt(0.1)./sqrt(1-(k.*sin(x)).^2);

kt=0:0.1:0.7;

i=1;
while i<=8
    integ(i) = integralSimpsonQuadFn(0,pi/2,1000,@(x)f(0.1*(i-1),x));
    i=i+1;
end

P = polyfit(kt,integ,5)

yy1 = polyval(P,kt)

plot(kt,integ,kt,yy1)

yy = polyval(P,1)


