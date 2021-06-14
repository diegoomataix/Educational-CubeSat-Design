function Tsp=solar_rad(i,A,cg,cs,q)
%Funci�n que nos devuelve el par de perturbaci�n que produce la radiaci�n
%solar.
%Datos del sat�lite
%A: geometr�a del sat�lite.
%q:reflexi�n de la superficie(de 0 a 1)
%cg: posici�n del cetro de gravedad.
%cs: Posici�n del centro de presi�n solar
%Datos de �rbita
%i �ngulo de incidencia del Sol ��?? O puede ser dato del sensor en grados
%Par�metros
c=3e8; %Velocidad de la luz
Fs=1367; %Constante de radiaci�n solar.
i=i*pi/180; %pasamos i a radianes
F=Fs*A*(1+q)*cos(i)/c;
Tsp=F*(cs-cg);
end