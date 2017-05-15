n = gets.to_i
arr = []
n.times do
	arr << gets.to_i
end
# arr.sort!
sorted = arr.sort
normal = sorted[1]
chunk = sorted.chunk{|x| x}
# puts "#{chunk.count}"
ans = false
if chunk.count == 1
	puts "Exemplary pages."
	ans = true
elsif chunk.count == 2 || chunk.count == 3
	min,min_ind,max,max_ind = arr.each_with_index.minmax.flatten
	# puts "min #{min} ind #{min_ind} #{max} #{max_ind}" if n == 198
	# puts "#{arr.count(min) == 1  && arr.count(max) == 1}"

	el = (min + max) / 2
	ml = max - el

	if (arr.count(min) == 1)  && (arr.count(max) == 1) && (el-min == ml)
		if !(chunk.count == 3 && el != normal)
			ans = true
			puts "#{ml} ml. from cup ##{min_ind+1} to cup ##{max_ind+1}."
		end
	end
end

puts "Unrecoverable configuration." unless ans