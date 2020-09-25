function[m,co,p]=ordenamodos(c,NN)
% c: valores propios
% NN: longitud de c
%
% m: numeros de modos
% co: posicion de mayor a menor
% p: porcentaje de varianza explicada por los modos de mayor a menor
%
traza=sum(c);
[W,I]=sort(c);
X=[W I];
X=X';
for i=1:NN;
co(:,i)=X(:,NN-i+1);
end
p=co(1,:)/traza; 
m=NN;


