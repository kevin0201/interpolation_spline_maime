function [ sigmater ] = constructsigmater( sigmasecond,interval )
%%Construction du vecteur sigma-ter
%  %Construction du vecteur sigma-ter
for j=1:(length(interval))
    sigmater(j)=(sigmasecond(j+1)-sigmasecond(j))/interval(j);
    sigmater=[sigmater 0];
end

end

