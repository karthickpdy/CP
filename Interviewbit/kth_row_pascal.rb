def get_row(a)
	ans = []
	a += 1
	(1..a).each do |i|
		c = 1
		ans = []
		(1..i).each do |j|
			ans << c
			c = c * (i - j)/j
		end
	end
	ans
end

puts "#{get_row(3)}"
puts "#{get_row(4)}"