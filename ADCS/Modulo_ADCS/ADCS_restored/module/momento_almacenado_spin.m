function omega=momento_almacenado_spin(hmw,I)
%Calcula la velocidad de rotación para un momento almacenado dado.
%hrw: momento almacenado de una ruda de reacción.
%I: momento de inercia respecto al eje de giro.
omega=hmw/I;
end