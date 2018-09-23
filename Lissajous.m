function [av,hb] = Lissajous(a,b,phi)
%a= input('a:');
%b = input('b:');
%phi=pi*input('Type the value of phi: pi*');
w1=1;
w2=1.5;
w3=2;

t=linspace(0,100,1000);
x=a*sin(w1*t);
y=b*sin(w2*t+phi);


g='dg'
%print g
plot(x,y)
axis equal
av=50;
hb=100;
end
