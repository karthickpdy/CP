t = gets.to_i
t.times do 
	n,k = gets.split(" ").map(&:to_i)
	arr = gets.split(" ").map(&:to_i)
	arr.sort!
	sum = arr.inject(0,&:+)
	first_k = arr[0..k-1].inject(0,&:+)
	last_k = arr[n-k..-1].inject(0,&:+)

	# puts "sum #{sum} kid_sum #{kid_sum}"
	chef_sum = [first_k,last_k,sum - first_k,sum -last_k].max
	kid_sum = sum - chef_sum
	puts chef_sum - kid_sum
end

# https://www.codechef.com/problems/MAXDIFF