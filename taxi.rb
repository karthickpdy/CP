n = gets.to_i
k = 4
groups = gets.split(' ').map(&:to_i)
# group_count = groups.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
# puts group_count

selection_array = [false] * n
while i < n
	break if selection_array.all?
	j = i + 1
	while j < n
		selection_array[j] = true
	end
end
# i = 0
# j = n - 1
# taxi = 0
# groups.sort!
# while i < j
# 	if k == groups[j]
# 		# puts "in k == [#{groups[j]}]" 
# 		j -= 1
# 	elsif groups[i] + groups[j] == k
# 		# puts "[#{groups[i]},#{groups[j]}]"	
# 		i += 1
# 		j -= 1
# 	elsif groups[i] + groups[i+1] + groups[j] == k
# 		# puts "[#{groups[i]},#{groups[j]}]"	
# 		i += 2
# 		j -= 1
# 	else
# 		# puts "[#{groups[j]}]" 
# 		j -= 1		
# 	end
# 	taxi += 1
# end

# taxi += 1 if i == j
# puts taxi
