t = gets.to_i
t.times do 
	n = gets.to_i
	arr = gets.split(" ").map(&:to_i)
	
	count = arr.each_with_object(Hash.new(0)) do |a,count|
		count[a] += 1
	end
	
	heights = count.values.each_with_object({}) do |a,h|
		h[a] ||= []
		h[a] << count.key(a)
		count.delete(count.key(a))
	end

	nums = heights.keys.sort
	ans = nil
	nums.each do |a|
		nums.reverse_each do |b|
			if heights[b].any?{|x| x > a}
				ans = b - a
				break
			end
		end
		break if ans
	end
	ans ||= -1
	puts ans
end
# 1
# 6
# 3 1 3 2 3 3