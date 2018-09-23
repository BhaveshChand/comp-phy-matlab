clear all
close all

v = 1.98189e-12;    %Depth of Pot. Well in MeV
m = 9.10938e-31;    %Mass of particle, i.e. electron
h = 1.05457e-34;    %Planck's const/2/pi
a = 1e-12;  %0.5*Width of Pot.Well
ce = 1.60217e-19;   %Charge of electron

z0 = a * sqrt(2*m*v) / h;

f = @(z,s) sqrt(((z0/z)^2)-1) - s*(tan(z)^s);

lim = z0*2/pi;

eps=1e-8;   %Define small limit around n*pi/2 to not include in search so that function does not blow up
i=0;
while i<lim
    s = (-1)^i; %Determine sign to make function -tan(z) or +cot(z) depending on interval
    if i+1>lim
        high=z0;
    else
        high=(i+1)*pi/2 - eps;
    end
    low=i*pi/2;
    root(i+1) = findRootBisectFn(@(z)f(z,s), low, high, eps, 0);
    i=i+1;
end

ener = ((root*h/a).^2)/(2*m*ce*1e6);

even_states = 1:2:i;
odd_states = 2:2:i;

disp("Even states energies in MeV:")
disp(ener(even_states))
disp("Odd states energies in MeV:")
disp(ener(odd_states))

