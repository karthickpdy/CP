t = gets.to_i
VOWELS = "aeiou"
t.times do 
	s = gets.chomp
	c = 0
	s.downcase.each_char{|x| c += 1 if VOWELS.include?(x)}
	puts c
end