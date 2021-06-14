function Mp=propulsante(PMG,PAM,sPMG,sPAM,Fs,Fmd,Isp)
%C�lculo de la masa de propulsante necesaria para para la vida del
%sat�lite.
%Datos 
%PMG y PAM vienen dados por la vida del propulsor.
%Fs y Fd vienen dados por las fuerzas requeridas para maniobras y
%perturbaciones respectivamente.
%Datos de misi�n
%sPMG: segundos que est� encendido cada pulso en maniobras grandes.
%sPAM: segundos que est� encendido cada pulso en amortiguaci�n de momento.
%Datos del propulsor
%Isp: impulso espec�fico
g=9.81;


%Impulso para maniobras
Is=PMG*sPMG*Fs;
%Impulso para amortiguaci�n de momento.
Imp=PAM*sPAM*Fmd;
%Impulso total
I=Is+Imp;

%C�lculo de la masa total
Mp=I/(Isp*g);




