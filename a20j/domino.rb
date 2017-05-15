n = gets.to_i
upper = []
lower = []
n.times { 
	a,b = gets.split(" ").map(&:to_i)
	upper << a
	lower << b
}

up_sum = upper.inject(0,&:+)
low_sum = lower.inject(0,&:+)


if up_sum.even? && low_sum.even?
	ans = 0
elsif (up_sum.even? && low_sum.odd?) || (up_sum.odd? && low_sum.even?)
	ans = -1
elsif (up_sum.odd? && low_sum.odd?)
	ans = -1
	(0..n-1).each do |i|
		if (upper[i].odd? && lower[i].even?) || (upper[i].even? && lower[i].odd?)
			ans = 1
			break		
		end
	end		
end

puts ans
