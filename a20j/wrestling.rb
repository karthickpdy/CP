def lex(first,second)
	lexi = true
	i = 0
	j = 0
	ans = nil
	while i < first.length && j < second.length
		if first[i] < second[i]
			ans = "second"
			break
		elsif first[i] > second[i]
			ans = "first"
			break
		end
		i += 1
		j += 1
	end
	if !ans && first.length != second.length
		if first.length < second.length
			ans = "second"
		else
			ans = "first"
		end
	end
	ans
end

n = gets.to_i
arr = []
n.times do
	arr << gets.to_i
end
first = arr.select{|a| a > 0}
second = arr.select{|a| a < 0}.map { |e| e.abs  }

first_score = first.inject(0,:+)
second_score = second.inject(0,:+)

if first_score < second_score
	ans = "second"
elsif first_score > second_score
	ans = "first"
else
	ans = lex(first,second)
	unless ans
		if arr[-1] > 0
			ans = "first"
		else
			ans = "second"
		end
	end

end
puts ans