# n = gets.to_i
# arr = gets.split(" ").map(&:to_i)

# uniq_count = arr.uniq.count
# ans = []

# l = arr.length
# val = 0

# (0...arr.length).each do |i|
# 	uniq = 0 
# 	found = []
# 	(i...n).each do |j|
# 		if !found.include?(arr[j])
# 			uniq += 1 
# 			found << arr[j]
# 		end

# 		if uniq == uniq_count
# 			val += l - j
# 			break
# 		end
# 	end
# 	# puts "#{found}"
# end

# puts val

n = gets.to_i
arr = gets.split(" ").map(&:to_i)

uniq_count = arr.uniq.count
ans = []

l = arr.length
val = 0

uniq = 0 
found = Hash.new(0)
uniq_set = []
j = 0
(0...arr.length).each do |i|
	j = [i,j].max
	while j < n && uniq_set.length < uniq_count
		uniq_set << arr[j] if found[arr[j]] == 0
		found[arr[j]] += 1
		j += 1
	end
		
	
	if uniq_set.length == uniq_count
		val += l - j + 1	
	end

	found[arr[i]] -= 1
	uniq_set.delete(arr[i]) if found[arr[i]] == 0
end

puts val