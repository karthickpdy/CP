n,k = gets.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i)
count = Array.new(k,0)
arr.each do |a|
	count[a-1] += 1
end
move = 0
count1 = count.dup
while count[k-1] != n
	# puts "#{count}"
	move += 1
	count.each_with_index do |a,key|		
		if count[key] != 0 && key != k - 1
			count1[key] -= 1
			count1[key+1] += 1
		end
	end
	count = count1.dup
end

puts move