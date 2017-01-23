function [ sigmaprime ] = constructsigmaprime( sigma,sigmasecond,sigmater,interval )
%
%   %Construction du vecteur sigma-prime
for j=1:(length(interval))
    sigmaprime(j)=((sigma(j+1)-sigma(j))/interval(j))-((interval(j)/6)*(sigmasecond(j+1)+2*sigmasecond(j)));
end

ns=length(sigmaprime);
nh=length(interval);
nd=length(sigmasecond)-1;
nt=length(sigmater)-1;
sigmaprimen=sigmaprime(ns)+interval(nh)*sigmasecond(nd)+(((interval(nh)^2)/2)*sigmater(nt));

sigmaprime=[sigmaprime sigmaprimen];
end

