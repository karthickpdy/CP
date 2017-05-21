while true
	a,b = gets.split(" ").map(&:to_i)
	break if a == -1 && b == -1
	denom = [a,b].min + 1
	num = [a,b].max

	puts (num/denom.to_f).ceil


end