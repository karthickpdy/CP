n,k = gets.split(" ").map(&:to_i)
arr = gets.split(" ")
count = 0
arr.each { |e| 
	count += 1 if e.scan(/[47]/).length <= k
}
puts count