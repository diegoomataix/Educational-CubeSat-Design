function Tg=grad_grav(h,theta, Iz,Iy)
%Calcula el par de gradiente de gravedad dados:
%Datos de órbita
%h altura del satélite
%theta máxima desviación esperada de la vertical local.
%Datos de satélite
%Inercias del satélite(Iz e Iy)
%Parámetros
mu=3.986e14;%Parámetro másico de la Tierra mu.(=398600,5 km3.s-2)
RE= 6371000;%Radio terrestre (6371 km)
theta=theta*pi/180; %pasamos theta a radianes
h=h*1e3; %pasamos h a metros
Tg=(3*mu*abs(Iz-Iy)*sin(2*theta))/(2*(RE+h)^3);
end