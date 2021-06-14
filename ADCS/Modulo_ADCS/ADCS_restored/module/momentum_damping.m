function F=momentum_damping(h,L,t);
%Para la amortiguación del momento.
%h momento almacenado
%L brazo de momento
%t tiempo de quemado
F=h/(L*t);

