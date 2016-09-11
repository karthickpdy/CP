pattern = ["010","101"]
r = Regexp.union(pattern)

t = gets.to_i
t.times do 
	s = gets.chomp
	puts s =~ r ? "Good" : "Bad"
end