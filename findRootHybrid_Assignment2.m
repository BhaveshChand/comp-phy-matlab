clear all
close all

%Given details
f=@(x)1/128 * (35 - 1260*x^2 + 6930*x^4 - 12012*x^6 + 6435*x^8);
a=0;
b=1;
eps=1e-6;

%Derivative
df=@(x)1/128 * x * (-1260*2 + 6930*4*x^2 - 12012*6*x^4 + 6435*8*x^6);

c1=(a+b)/2; %Initial bisection guess
i=0;
if f(c1)==0  %Check initial guess for root
    disp("Root of P8(x) is:")
    root=c1    
    disp("Required no. of iterations: ")
    i
    exit
end
flag=1;
while flag
    i=i+1;
    guess=c1-f(c1)/df(c1); %Newton Raphson guess
    if guess>=a && guess<=b
        c2=c1;
        c1=guess;
    else
        if sign(f(a)*f(c1))==-1
            b=c1;   %Change upper search bound
        elseif sign(f(c1)*f(b))==-1
            a=c1;   %Change lower search bound
        end
        c2=c1;
        c1=(a+b)/2; %new bisection guess
    end
    if (abs(f(c1))<eps) && (abs(c1-c2)/abs(c2)<eps) %Termination Conditions
        disp("Root of P8(x) is:")
        root=c1    
        disp("Required no. of iterations: ")
        i
        flag=0;
    end
end