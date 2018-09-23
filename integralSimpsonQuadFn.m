% f=@(x)1./(1+cos(x));
% a=0;
% b=pi/2;
% N=500;
% int = integralSimpsonQuad(a,b,N,f)


function int = integralSimpsonQuadFn(a,b,N,f)
    h=(b-a)/N;
    x=a:h:b;

    int=h/3*(f(x(1))+f(x(N+1)));
    int=int+ h/3 *4* sum(f(x(2:2:N))) ;
    int= int + h/3*2 *sum(f(x(3:2:N)));
end

