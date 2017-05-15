t = gets.to_i
t.times do 
	s = gets.chomp
	f = gets.chomp
	arr = []
	s.each_char.each_cons(f.size).map(&:join).each_with_index.count do |a,i|
		if a == f
			arr << i
		end
		a == f
	end

	right_count = {(arr.length-1) => 0}
	puts "#{arr}"
	(arr.length-2).downto(0) do |i|
		c = 0
		if (arr[i] + f.length) >= arr[i+1] # Coinciding
			c = right_count[i+2] + 1 if right_count[i+2]
		else
			c = right_count[i+1] + 1
		end
		right_count[i] = c
	end
	puts "#{right_count}"
end