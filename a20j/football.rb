n = gets.to_i
count = Hash.new(0)
n.times {  
	a = gets.chomp
	count[a] += 1
}
puts count.key(count.values.max)