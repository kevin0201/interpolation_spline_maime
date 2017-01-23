%On utilise la fonction spline d�fini dans matlab afin d'avoir une certaine
%comparaison avec notre fonction spline et nous donner les points
%d'interpolation
%le vecteur x et y donne les points d'interpolation que nous avons choisi
%afin d'avoir l'allule de la courbe d�sir�
%ce script est � ex�cuter avec pr�caution, car les points interpol�s
%sont au nombre de 10000 et peut prendre du temps � s'ex�cuter
%Nous avons pu l'ex�cuter sur notre machine ayant un processeur 7 coeurs
%(intel inside i7)
l=linspace(0,23.2,10000);
x=  [0    5.0000   12.5000   17.5000   20.0000   21.0000   23.2000];
 y= [1.0000    3.5000    3.2000    1.0000    0.4000    0.5000    1.5000];
 s=spline(x,y,l);
 [xx,yy]= pspline(l,s,10000);