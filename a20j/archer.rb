a,b,c,d = gets.split(" ").map(&:to_i)
p = a/b.to_f
z = c/d.to_f
q = (1-p)*(1-z)

puts (p/(1-q))