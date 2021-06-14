function [T hrw]=rueda_reaccion(TDS,theta,I,t,P)
%Par y momento acumulado para máxima aceleración angular.(mitad de la
%distancia en la mitad de tiempo)
%theta: ángulo de maniobra (grados)
%I momento de inercia respecto al eje de giro
%t: tiempo de maniobra (min)
%P periodo de orbita (min)
theta_r = theta *pi/180;
t_s = t*60;
P_s = P*60;

T=4*theta_r*I/t_s^2;

hrw = TDS*P_s*.707/4;%.707 es el rms de la función seno-->mejorar para que calcule rms de cualquier función.