n,m = gets.split(" ").map(&:to_i)
correct = gets.split(" ").map(&:to_i)
wrong = gets.split(" ").map(&:to_i)
start = correct.max
finish = wrong.min - 1
tl = -1
(start..finish).each { |v| 
	if correct.any?{|a| 2 * a <= v }  
		tl = v
		break
	end
}
puts tl