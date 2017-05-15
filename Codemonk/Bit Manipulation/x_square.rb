t = gets.to_i
t.times do 
	s1 = gets.chomp.split("")
	s2 = gets.chomp.split("")
	puts (s1 & s2).empty? ? "No" : "Yes"
end