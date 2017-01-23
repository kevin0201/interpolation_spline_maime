function [interpolation,interpole] = pspline(X,Y,NBP)
%Fonction PSPLINE/interpolation:splines/projet16 Matlab/MASTER MAIME2013-2014/BCKY
%   La fonction PSPLINE, fait de l'interpolation polynomiale par morceaux, par la
%   méthode des splines cubiques naturelles
%   La syntaxe générale est PSPLINE(X,Y,NBP)
%   X: est un vecteur/abcisses des point par lesquels passe la courbes d'interpolation
%   Y: est unvecteur de meme taille que Y/ordonees associées à X
%   NBP: est un scalaire ou un vecteur/Le vecteur contenant les abcisses des points à interpoler ou le Nombre de point entre le minimum de X et le maximum de X qui seront interpolés
%   La fonction renvoie les points interpolés, à savoir un vecteur qui
%   contient leurs abcisses et un autre qui contient leurs ordonnees et trace
%   la courbe d'interpolation 

%Construction de interpolation les abcices des points qui seront
%interpolées par les splines cubiques
if size(NBP)==[1 1]
    interpolation = Constructinterpolation( X,NBP );
else 
    %On insere les points d'interpolation dans le vecteur des points à
    %interpoler
    interpolation1=NBP;
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

%Construction du vecteur sigma qui contient les coordonnees des noeuds, où
%c'est à dire les abcisses de raccordement des splines cubiques

sigma=constructsigma(Y);

%construction du vecteur contenant les distances entre deux noeuds consécutifs x(j+1)-x(j)

interval=construcinterval(X);

%Construction du second membre du systeme tridiagonale a resoudre

secondmembre=construcsecondmembre(sigma,interval);

%Construction de la matrice tridiagonale du systeme tridiagonale a resoudre

tridiagonale = constructtridiagonale( interval );

%Construction du vecteur sigma-second par resolution du systeme tridiagonale

sigmasecond = constructsigmasecond(secondmembre,tridiagonale);

%Construction du vecteur sigma-ter

sigmater = constructsigmater( sigmasecond,interval );

%Construction du vecteur sigma-prime

sigmaprime = constructsigmaprime( sigma,sigmasecond,sigmater,interval );

%Recherche de l'intervalle et calcul de la matrice
%[s,(x-xj)s',s''(x-xj)^2/2),s'''((x-xj)^3/6)]

sigmax = polyx( X,interpolation,sigma,sigmaprime,sigmasecond,sigmater);

%Construction de interpole/ on somme ligne par ligne pour obtenir
%s+(x-xj)s'+s''(x-xj)^2/2)+s'''((x-xj)^3/6)
for j=1:length(sigmax(:,1))
    interpole(j)= sum(sigmax(j,:));
end

%***********TRACE, GRAPHIQUE**************
plot(X,Y,'rd',interpolation,interpole,'g');
xlabel('abcisses');
ylabel('ordonnées');
title('courbe d''interpolation par splines cubiques naturelles');

end

