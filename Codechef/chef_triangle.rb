
# n,l,r = gets.split(" ").map(&:to_i)
# arr = gets.split(" ").map(&:to_i)
# ans = []
# arr.sort!
# c = 0
# ans = []
# (l..r).each do |x|
# 	found = false
# 	arr.each do |a|
# 		next if x - a <= 0
# 		i = arr.index{|v| v > x - a }
# 		# puts "i #{i}"
# 		if i 
# 			ans << x
# 			break
# 		end
# 		# while i < arr.length
# 		# 	# a + v > x
# 		# 	# a + x > arr[i]
# 		# 	# x + arr[i] > a
# 		# 	if a + x > arr[i] && x + arr[i] > a
# 		# 		ans << x
# 		# 		found = true
# 		# 		break
# 		# 	end
# 		# 	i += 1
# 		# end
# 		# break if found
# 	end	
# end

# puts ans.uniq.length

# n,l,r = gets.split(" ").map(&:to_i)
# arr = gets.split(" ").map(&:to_i)
# ans = []
# range = (l..r)
# arr.sort!
# (0...arr.length).each_cons(2) do |i,j|
# 	# (i+1...arr.length).each do |j|
# 		max = arr[i] + arr[j] - 1
# 		min = (arr[i] - arr[j]).abs + 1
# 		min = [min,l].max
# 		max = [max,r].min
# 		ans.push(*(min..max))
# 	# end
# end
# if ans.length == 0
# 	puts 1
# else
# 	puts ans.uniq.length
# end


n,l,r = gets.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i)

ans = []


if n <= 9 * (10**5)
arr.sort!
(0...arr.length).each_cons(2) do |i,j|
	max = arr[i] + arr[j] - 1
	min = (arr[i] - arr[j]).abs + 1
	curr_min = [l,min].max

	curr_max = [r,max].min

	ans << [curr_min,curr_max] if curr_min <= curr_max
end
counted_till = 0
count = 0
# puts "#{ans}"
	ans.sort! 
	ans.each do |a|
		
		if a[0] > counted_till
			count += a[1] - a[0] + 1
			counted_till = a[1]
		elsif a[1] > counted_till
			count += a[1] - (counted_till + 1) + 1
			counted_till = a[1]
		end
	end
	puts count
else

arr.sort!
curr_min = 10**20
curr_max = 0
(0...arr.length).each_cons(2) do |i,j|
	# (i+1...arr.length).each do |j|
		max = arr[i] + arr[j] - 1
		min = (arr[i] - arr[j]).abs + 1
		# puts "#{curr_min} #{curr_max}"
		curr_min = [min,curr_min].min
		curr_max = [max,curr_max].max
		# ans.push(*(min..max))
	# end
end

if curr_max < l || curr_min > r || curr_max < curr_min
	ans = 0
else
	curr_min = [curr_min,l].max
	curr_max = [curr_max,r].min
	ans = curr_max - curr_min + 1
end
puts ans

end


# 3 1 100
# 1 3 10