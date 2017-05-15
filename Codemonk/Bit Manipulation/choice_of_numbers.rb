t = gets.to_i
def count_bits(n)
	c = 0
	while n > 0
		n &= n-1
		c += 1
	end
	c
end
t.times do 
	n,k = gets.split(" ").map(&:to_i)
	puts gets.split(" ").map{|x| count_bits(x.to_i)}.sort.reverse[0..(k-1)].inject(0,:+)
end