function [ sigmax ] = polyx( X,interpolation,sigma,sigmaprime,sigmasecond,sigmater )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
for j=1:length(interpolation)
    for i=1:length(X)-1
        if interpolation(j)>=X(i) &&  interpolation(j)<=X(i+1)         
            sigmax(j,1)=1*sigma(i);
            sigmax(j,2)=(interpolation(j)-X(i))*sigmaprime(i);
            sigmax(j,3)=((interpolation(j)-X(i))^2/2)*sigmasecond(i);
            sigmax(j,4)=((interpolation(j)-X(i))^3/6)*sigmater(i);
        end
    end
end

