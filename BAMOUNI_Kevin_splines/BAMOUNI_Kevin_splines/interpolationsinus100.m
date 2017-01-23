x=linspace(-10,10,99);
y=sin(x);
[xx,yy]=pspline(x,y,100);
plot(xx,yy,'b',x,y,'r',x,y,'d');
%plot();
xlabel('abcisses');
ylabel('ordonnées');
title('interpolation par splines cubiques naturelles de la fonction sinus');
legend('courbe d''interpolation de la fonction sinus','courbe sinus en 99 points','points d''interpolation');
