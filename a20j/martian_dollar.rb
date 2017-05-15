n,b = gets.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i)
s = 0
diff = []
(0..n-2).each do |i|
	a = arr[i]
	max = arr[(i+1)..-1].max
	if a <= b
		stocks = b/a
		left = b % a
		sell = stocks * max
		diff << sell + left
	end
end
diff << b
puts diff.max