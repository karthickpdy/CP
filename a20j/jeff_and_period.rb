n = gets.to_i
arr = gets.split(" ").map(&:to_i)

index_list = {}
arr.each_with_index do |a,i|
	if index_list[a] && index_list[a] != 0
		if index_list[a][-2]

			if i - index_list[a][-1] == index_list[a][-1] - index_list[a][-2]
				# puts "i #{i}"
				index_list[a] << i
			else
				index_list[a] = 0
			end
		else
			index_list[a] << i
		end
	elsif index_list[a] != 0
		index_list[a] = [i]
	end
end
# 
# index_list = index_list.sort.to_h

count = index_list.values.count{|a| a!= 0}

puts count
index_list.keys.sort.each do |k|
	v = index_list[k]
	if v != 0
		d = 0
		d = v[-1] - v[-2] if v.length > 1
		puts "#{k} #{d}"
	end
end