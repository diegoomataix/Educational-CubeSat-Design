function Tm =mag_field(h,D,M1)
%Función que da el par que produce la parturbación magnética.
%Datos de órbita
%h altura de la órbita
%Distacia del centro del dipolo terrestre a nuestra nave
%M1 Nº de veces el campo característico de la Tierra.
%Módulo de potencia
%D dipolo magnético residual.
%Parámetros
h=h*1e3 %Pasamos la h a metros
M=7.96e15;%Par característico terrestre
R=6371e3;%Radio del dipolo. A efectos prácticos el diámetro terrestre.
M=M1*M;
B=2*M/(R+h)^3;%Aproximación del caampo magnético terrestre hasta órbitas la mitad del ecuador.
Tm=D*B;
end
