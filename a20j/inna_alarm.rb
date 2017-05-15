n = gets.to_i
x_arr = []
y_arr = []
n.times do
	x,y = gets.split(" ").map(&:to_i)
	x_arr << x
	y_arr << y
end
h = x_arr.uniq.count
v = y_arr.uniq.count
puts [h,v].min

#Good - Diff 5 - 1st attempt ac - wow