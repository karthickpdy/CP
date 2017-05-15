t = gets.to_i
t.times do 
	s = 0
	n = gets.to_i
	arr = gets.split(" ").map(&:to_i)
	arr.each do |a|
		s ^= a
	end
	s = -1 if s == 0

	puts s
end