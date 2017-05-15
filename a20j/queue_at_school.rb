n,t = gets.split(" ").map(&:to_i)
s = gets.chomp

t.times do
	i = 0
	while i < s.length-1		
		if s[i] == 'B' && s[i+1] == 'G'
			s[i],s[i+1] = s[i+1],s[i]
			i += 2
		else
			i += 1
		end
	end
end
# 
puts s