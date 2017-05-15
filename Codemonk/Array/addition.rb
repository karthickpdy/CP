n = gets.to_i
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)
ans = []
(0...n).each do |i|
	ans << a[i] + b[i]
end
puts ans.join(" ")