%EXECUTE THIS FILE
f=@(x)(x^3-6*x^2+11*x-6)/11;
eps=1e-8;
N=0;
x=1.5;
a=x-1;
b=x+1;

root=findRootFPIFn(f,x,a,b,N,eps)

%In this case, the current version of the code gives root=1 for initial x<2
%and gives root=3 for x>2 and does not predict root=2 anywhere except at 
%x=2.
%To get root=2, line 2 of findRootFPIFn.m has to be changed to 
%"g=@(x)x+f(x);". Now, we get root =2 for 1<x<3 and function does not 
%converge for x<1 and x>3.
%It may be concluded that Fixed Point Interval method is capable of only 
%giving the alternate roots depending on whether g=x+f or g=x-f is used.