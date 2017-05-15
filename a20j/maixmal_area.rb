n = gets.to_i
arr = []
n.times do
	arr << gets.split(" ").map(&:to_i)
end
area = 0
# puts "#{arr}"
(0..(n-2)).each do |i|
	i2 = (i + 1) % (n+1) 
	# puts "#{i}"
	area += arr[i][0]*arr[i2][1]
	area -= arr[i2][0]*arr[i][1]
end
puts (area.abs)/2.0