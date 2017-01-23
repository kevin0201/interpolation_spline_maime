function [ tridiagonale ] = constructtridiagonale( interval )
%*construction des diagonales 1 et 2
%   /*construction des diagonales 1 et 2

%/*d12 le vecteur des diagonales 1 et 2
for j=1:(length(interval)-2)
    d12(j)=interval(j)/6;
end 
    
%/*construction de la diagonale principale de vecteur d
for j=1:(length(interval)-1)
    d(j)=(interval(j)+interval(j+1))/3;
end 
    
%/*construction de la matrice tridiagonale A
%/*diagonale secondaire
for j=1:(length(interval)-2)
    tridiagonale(j,j+1)=d12(j);
    tridiagonale(j+1,j)=d12(j);
end 
%/*diagonale principale
for j=1:(length(interval)-1)
    tridiagonale(j,j)=d(j);
end 

end

