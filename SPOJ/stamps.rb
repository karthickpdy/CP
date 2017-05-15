t = gets.to_i
t.times do |i|
	s,n = gets.split(" ").map(&:to_i)
	arr = gets.split(" ").map(&:to_i).sort.reverse

	sum = 0
	count = 0
	ans = false
	arr.each do |a|
		sum += a
		count += 1

		if sum >= s
			ans = true
			break
		end		
	end
	

	puts "Scenario ##{i+1}:"
	puts ans ? count : "impossible"
	puts
end