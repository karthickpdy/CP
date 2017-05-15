t = gets.to_i
t.times do 
	s = gets.chomp
	puts s =~ /21.*/ || s.to_i % 21 == 0 ? "The streak is broken!" : "The streak lives still in our heart!"
end