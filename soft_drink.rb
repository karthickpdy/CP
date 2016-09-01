n,k,l,c,d,p,nl,np = gets.split(" ").map(&:to_i)
litres = (k * l) / nl
limes = c * d
salt = p / np
puts [litres,limes,salt].min / n