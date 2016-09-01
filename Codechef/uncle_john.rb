t = gets.to_i
t.times do 	
	n = gets.to_i
	arr = gets.split(" ").map(&:to_i)
	k = gets.to_i
	val = arr[k-1]
	arr.sort!
	puts arr.index(val) + 1
end