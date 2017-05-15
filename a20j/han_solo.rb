n,x1,y1 = gets.split(" ").map(&:to_i)
arr = []
n.times do
	arr << gets.split(" ").map(&:to_i)
end
eq = arr.map do |a|
	x2,y2 = a
	(x2-x1) == 0 ? 10**9 : (y2-y1)/(x2-x1).to_f
end
puts eq.uniq.count
#Good - Finding the uniq slopes will give the answer - better than editorial - O(n)