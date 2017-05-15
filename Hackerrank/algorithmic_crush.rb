n,m = gets.split(" ").map(&:to_i)

arr = Array.new(n+1,0)

m.times do	
	a,b,k = gets.split(" ").map(&:to_i)
	arr[a-1] += k
	arr[b] -= k
end
max = 0
temp = 0
arr.each do |a|
	temp += a
	max = temp if temp > max
end
puts max