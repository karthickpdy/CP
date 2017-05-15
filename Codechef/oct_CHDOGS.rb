t = gets.to_i
t.times do 
	s,v = gets.split(" ").map(&:to_i)
	ans = (2 * s) / (3 * v).to_f
	puts ans
end