function Tm =mag_field(h,D,M1)
%Funci�n que da el par que produce la parturbaci�n magn�tica.
%Datos de �rbita
%h altura de la �rbita
%Distacia del centro del dipolo terrestre a nuestra nave
%M1 N� de veces el campo caracter�stico de la Tierra.
%M�dulo de potencia
%D dipolo magn�tico residual.
%Par�metros
h=h*1e3 %Pasamos la h a metros
M=7.96e15;%Par caracter�stico terrestre
R=6371e3;%Radio del dipolo. A efectos pr�cticos el di�metro terrestre.
M=M1*M;
B=2*M/(R+h)^3;%Aproximaci�n del caampo magn�tico terrestre hasta �rbitas la mitad del ecuador.
Tm=D*B;
end
