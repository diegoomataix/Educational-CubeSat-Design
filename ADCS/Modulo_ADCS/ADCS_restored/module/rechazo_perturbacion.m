function TRW=rechazo_perturbacion(MF,Td)
%Par que deben proporcionar los actuadores para contrarrestar el par de las
%perturbaciones.
%MF: factor de seguridad
%Td: Par de perturbación total


TRW=MF*Td;
