s = gets.chomp
t = gets.chomp
i = 0
t.each_char do |c|
	i += 1 if c == s[i]
end
puts i + 1