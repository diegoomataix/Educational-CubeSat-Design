function Ta=aerodinamica(h,v,A,Cd,Cpa,cg)
%Nos el par que produce la resistencia aerodinámica para órbitas bajas. 
%Datos de órbita
%Altitud órbita.(h)-->Nos interesa la rho(añadir mas tarde función ISA.
%Velocidad del satélite v.
%Datos de satélite.
%Geometría satélite-->Área frontal A
%Coeficiente de resistencia aerodinámica Cd
%Centro de presiones Cpa
%Centro de masas cg

[rho,T,P]=atmosferaISA(h);
F=rho*A*Cd*(v^2)/2;
Ta=F*(Cpa-cg);
end
