function F=thruster_disturbances(Td,L)
%Cálculo de empuje para combatir las perturbaciones.
%Td par perturbador
%L brazo de momento.

F=Td/L;