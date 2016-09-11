t = gets.to_i
t.times do 
	n = gets.chomp
	one_count = n.count("1")
	zero_count = n.count("0")
	puts (one_count == 1 || zero_count == 1) ? "Yes" : "No"

end
