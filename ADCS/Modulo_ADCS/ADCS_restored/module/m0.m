function F=m0(I,theta,t,L,perc);
%Cálculo de empuje para conseguir la velocidad angular de
%maniobra.
%I momento inercia respecto de eje de giro
%theta: ángulo de maniobrA
%t tiempo de maniobra
%Brazo del momento
%perc porcentaje del tiempo en el que quiero alcanzar theta/t
theta_r=theta*pi/180; %Pasamos theta de deg a rad.
%t_s = t*60; %pasamos el tiempo en minutos a segundos
d1theta=theta_r/t;
d2theta=100*d1theta/(t*perc);
F=I*d2theta/L;