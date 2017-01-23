function [ interpolation ] = Constructinterpolation( X,NBP )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

interpolation1=linspace(X(1),X(length(X)),NBP);
%On insere les points d'interpolation dans le vecteur des points à
%interpoler
for i=1:(length(X))
    for j=1:(length(interpolation1))
        if X(i)<=interpolation1(j) 
            interpolation(j)=X(i);
        else
            if X(i)>interpolation1(j)
                interpolation(j)=interpolation1(j);                
            end
        end
    end
end
    
end

