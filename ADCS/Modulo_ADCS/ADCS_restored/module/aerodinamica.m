function Ta=aerodinamica(h,v,A,Cd,Cpa,cg)
%Nos el par que produce la resistencia aerodin�mica para �rbitas bajas. 
%Datos de �rbita
%Altitud �rbita.(h)-->Nos interesa la rho(a�adir mas tarde funci�n ISA.
%Velocidad del sat�lite v.
%Datos de sat�lite.
%Geometr�a sat�lite-->�rea frontal A
%Coeficiente de resistencia aerodin�mica Cd
%Centro de presiones Cpa
%Centro de masas cg

[rho,T,P]=atmosferaISA(h);
F=rho*A*Cd*(v^2)/2;
Ta=F*(Cpa-cg);
end
