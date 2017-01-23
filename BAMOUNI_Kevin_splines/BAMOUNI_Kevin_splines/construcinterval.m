 
function [interval] = construcinterval( x )
%%/*Construction du vecteur h qui represente les longueurs entres les noeuds 
%/*D'apres la méthode h_{j}=x_{j+1}-x_{j}
%   Detailed explanation goes here
for i=1:(length(x)-1)
    interval(i)=x(i+1)-x(i);
end

end

