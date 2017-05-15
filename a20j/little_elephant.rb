n = gets.to_i
arr = gets.split(" ").map(&:to_i)
c = 0
sorted = arr.sort
arr.each_with_index do |a,i|
	c += 1 if a != sorted[i]
end
puts c <= 2 ? "YES" : "NO"