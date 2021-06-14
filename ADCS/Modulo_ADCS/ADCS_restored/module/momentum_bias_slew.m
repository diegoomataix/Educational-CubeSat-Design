function F=momentum_bias_slew(I,theta,t,L,perc);

%¡¡¡¡¡¡Mirar como se meten los datos!!!!!!


%Nos da idea de cual va a ser la fuerza a aplicar para maniobras un
%vehículo de momento continuo.
%L brazo de momento
%ciclo del impulsador.
%h momento angular
%omega velocidad angular de maniobra

F=h*omega/(L*d);