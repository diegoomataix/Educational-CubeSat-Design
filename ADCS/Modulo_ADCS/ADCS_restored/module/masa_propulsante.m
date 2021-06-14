function M=masa_propulsante(R,F,t,Isp);
%Para la amortiguación del momento.
%Isp impulso especifico
%F fuerza del impulsor
%t tiempo de quemado
g=9.81;%constante gravitatoria para la tierra
M=F*t/(Isp*g);
end
