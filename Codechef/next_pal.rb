t = gets.to_i
t.times do 
	n = gets.to_i
	n += 1
	while true
		break if n.to_s == n.to_s.reverse
		n += 1
	end
	puts n
end