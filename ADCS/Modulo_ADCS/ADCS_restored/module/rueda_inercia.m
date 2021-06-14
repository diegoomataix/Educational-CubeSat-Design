function hmw=rueda_inercia(hrw,theta)
%Nos da el momento acumulado en una rueda de inercia dado el par necesario
%y el par de perturbaci�n externo.
%hrw momento almacenado por rueda de rwacci�n.
%theta: �ngulo permitido grados (precisi�n)
theta_r = theta*pi/180;

hmw = hrw/(theta_r*0.707);