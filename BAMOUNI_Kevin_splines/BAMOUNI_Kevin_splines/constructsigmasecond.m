function [ sigmasecond ] = constructsigmasecond( secondmembre,tridiagonale )
%/*resolution du syst�me tridiagonale, calcul de sigmasecond
%   /*resolution du syst�me tridiagonale, calcul de sigmasecond

sigmasecond=secondmembre/tridiagonale;
sigmasecond=[0 sigmasecond 0];

end

