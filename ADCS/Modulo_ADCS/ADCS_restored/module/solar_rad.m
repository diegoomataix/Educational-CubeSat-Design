function Tsp=solar_rad(i,A,cg,cs,q)
%Función que nos devuelve el par de perturbación que produce la radiación
%solar.
%Datos del satélite
%A: geometría del satélite.
%q:reflexión de la superficie(de 0 a 1)
%cg: posición del cetro de gravedad.
%cs: Posición del centro de presión solar
%Datos de órbita
%i Ángulo de incidencia del Sol ¿¿?? O puede ser dato del sensor en grados
%Parámetros
c=3e8; %Velocidad de la luz
Fs=1367; %Constante de radiación solar.
i=i*pi/180; %pasamos i a radianes
F=Fs*A*(1+q)*cos(i)/c;
Tsp=F*(cs-cg);
end