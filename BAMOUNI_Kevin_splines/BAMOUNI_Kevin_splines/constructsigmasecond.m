function [ sigmasecond ] = constructsigmasecond( secondmembre,tridiagonale )
%/*resolution du système tridiagonale, calcul de sigmasecond
%   /*resolution du système tridiagonale, calcul de sigmasecond

sigmasecond=secondmembre/tridiagonale;
sigmasecond=[0 sigmasecond 0];

end

