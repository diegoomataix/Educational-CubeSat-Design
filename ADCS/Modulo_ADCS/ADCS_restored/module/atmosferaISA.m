    function [ rho,T,P ] = atmosferaISA( h )
%ATMOSFERAISA Dada la altura en m calculamos temperatura(K), densidad(kgm/m^3) y
%presion(Pa)

g = 9.81;
M = 28.9e-3;
R = 287;
T0 = 288.15;
P0 = 101325;
rho0 = 1.225;
h=h*1e3;%Pasamos h a metros

if h < 11000
   landa = -6.5e-3;
   T = T0 + landa*h;
   P = P0* (T/T0)^(-g/(R*landa));
   rho = rho0 * (T/T0)^(-g/(R*landa)-1);
elseif h < 25000
    T11 = 216.65;
    P11 = 22552;
    rho11 = .3629;
    %landa=0;
    
    T=T11;
        P = P11*exp(-g*(h-11000)/(R*T));
    rho=rho11*exp(-g*(h-11000)/(R*T));
    
elseif h<47000
    
    landa=3e-3;
    T25=216.65;
    P25=2481;
    rho25=0.0399;
    
    T=T25+landa*(h-25000);
    P=P25*(T/T25)^(-g/(R*landa));
    rho=rho25*(T/T25)^(-g/(R*landa)-1);
else 
    disp ('Atmósfera no apreciable');
   rho=0;
   P=0;
   T=0;
  
        


end

