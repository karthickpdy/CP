n = gets.to_i
arr = []
n.times do
	arr << gets.to_i
end
time = arr[0]
prev_height = arr[0]
time += 1 # To eat
(1..n-1).each do |i|
	if arr[i] < prev_height
		#puts "He gets down to #{arr[i]}"#
		time += prev_height - arr[i]
		#puts "He jumps"
		time += 1
	else

		#puts "He jumps"
		time += 1 # Time to jump
		#puts "He Climbs to top in #{arr[i] - prev_height}"
		time += arr[i] - prev_height
	end
	#puts "He eats"
	time += 1

	#puts "Current time #{time}"
	prev_height = arr[i]
end

puts time