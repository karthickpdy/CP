n = gets.to_i
arr = []
b_arr = []
n.times do
	arr << gets.split(" ").map(&:to_i)
	b_arr << arr[-1][1]
end
arr.sort!

max = 0
arr.each do |a|
	if max <= a[1] 
		max = a[1]
	else
		max = a[0]
	end
end
puts "#{max}"