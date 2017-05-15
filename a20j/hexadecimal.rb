n = gets.to_i
i = 1
a = 1
c = 0
while a <= n
	c += 1
	i += 1
	a = i.to_s(2).to_i
end
puts c