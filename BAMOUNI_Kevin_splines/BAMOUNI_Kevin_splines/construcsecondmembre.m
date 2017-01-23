function [ secondmembre ] = construcsecondmembre( sigma,interval )
%*fabrication du second membre b
%   /*fabrication du second membre b

%/*sigma est le vecteur qui contient les ordonnées des points d'interpolation 
for j=2:(length(interval)-1)
secondmembre(j)=((sigma(j+1)-sigma(j))/interval(j))-((sigma(j)-sigma(j-1))/interval(j-1));
end
end

