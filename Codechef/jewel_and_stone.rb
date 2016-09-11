t = gets.to_i
t.times do 
	j = gets.chomp
	s = gets.chomp
	count = 0
	s.each_char do |a|
		count += 1 if j.include?(a)
	end
	puts count
end