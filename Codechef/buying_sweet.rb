t = gets.to_i
t.times do 
	n,x = gets.split(" ").map(&:to_i)
	arr = gets.split(" ").map(&:to_i)
	sum = arr.inject(0,&:+)
	max_sweets = (sum / x.to_f).floor

	actual_cost = max_sweets * x

	without_it = arr.map { |e| sum - e }
	
	inadequate = without_it.any? { |e| e >= actual_cost }
	if inadequate
		ans = -1 
	else
		ans = max_sweets
	end
	puts ans

end