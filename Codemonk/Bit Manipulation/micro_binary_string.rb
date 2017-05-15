t = gets.to_i
t.times do 
	n = gets.to_i
	num = gets.chomp
	one_count = num.count("1")
	zero_count = n - one_count
	one_count -= 1
	puts 2**[zero_count,one_count].min

end