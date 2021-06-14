function Fmb=mb(hmw,L,theta,t,d)
%C�lculo de la fuerza para maniobrar con un veh�culo de momento de
%polarizaci�n.
%Datos 
%hmw momento almacenado en la rueda de inercia.
%L brazo del propulsor
%t : tiempo en que deseamos realizar la maniobra en minutos.
%theta: �ngulo de maniobra en grados
%d ciclo de trabajo en porcentaje

%Velocidad angular de maniobra
theta_r = theta*pi/180;
t_s = t*60;
omega=theta_r/t_s;
%C�lculo de la fuerza
Fmb=100*hmw*omega/(L*d);




