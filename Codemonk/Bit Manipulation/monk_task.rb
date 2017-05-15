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
	n = gets.to_i
	arr = gets.split(" ")
	puts arr.each_with_index.map{|x,i| [count_bits(x.to_i),i]}.sort.map{|a,b| arr[b]}.join(" ")
end