require 'Set'
arr = Set.new
n,m = gets.split(" ").map(&:to_i)

val = (m+1) / 2
arr << val
arr << val + 1 if m.even?
i = 1
while arr.length < m
	if m.odd?
		val1 = val + i
	else
		val1 = val + i + 1
	end
	val2 = val - i
	arr << val2 if val2 >= 1
	arr << val1 if val1 <= m
	i += 1
end
arr = arr.to_a
n.times do |i|
	puts arr[i % m]
end

#Good - Nice implementation