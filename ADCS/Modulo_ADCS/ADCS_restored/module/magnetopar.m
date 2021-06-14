function  [Dm Ic]=magnetopar(h,Td,An)
%Nos da el dipolo magnético Dm que provoca el par deseado del magnetopar.
%Td par deseado
%Datos de órbita
%Altura de órbita h (km)
% An area del bobinado multiplicada por el número de vueltas del bobinado
%Salida
%Dm Dipolo magnético necesario
%Ic Corriente continua  necesaria para aplicar al bobinado
%Parámetros
R=6371e3; %Radio de la tierra
h_m = h*1e3;
M=7.96e15;%Par magnético terrestre.

B=2*M/(R+h)^3;
Dm=Td/B;

% el dato An no es obligatorio
Ic = NaN;
if ~isnan(An)
    Ic = Dm/An;
end
end
