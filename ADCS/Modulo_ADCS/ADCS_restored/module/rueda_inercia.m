function hmw=rueda_inercia(hrw,theta)
%Nos da el momento acumulado en una rueda de inercia dado el par necesario
%y el par de perturbación externo.
%hrw momento almacenado por rueda de rwacción.
%theta: ángulo permitido grados (precisión)
theta_r = theta*pi/180;

hmw = hrw/(theta_r*0.707);