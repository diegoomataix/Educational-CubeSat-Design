function Mp=propulsante(PMG,PAM,sPMG,sPAM,Fs,Fmd,Isp)
%Cálculo de la masa de propulsante necesaria para para la vida del
%satélite.
%Datos 
%PMG y PAM vienen dados por la vida del propulsor.
%Fs y Fd vienen dados por las fuerzas requeridas para maniobras y
%perturbaciones respectivamente.
%Datos de misión
%sPMG: segundos que está encendido cada pulso en maniobras grandes.
%sPAM: segundos que está encendido cada pulso en amortiguación de momento.
%Datos del propulsor
%Isp: impulso específico
g=9.81;


%Impulso para maniobras
Is=PMG*sPMG*Fs;
%Impulso para amortiguación de momento.
Imp=PAM*sPAM*Fmd;
%Impulso total
I=Is+Imp;

%Cálculo de la masa total
Mp=I/(Isp*g);




