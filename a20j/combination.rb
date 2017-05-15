n = gets.to_i
arr = []
n.times do 
	arr << gets.split(" ").map(&:to_i)	
end
arr.sort!{|a,b|
	if a[1] == b[1]
		b[0] <=> a[0]
	else
		b[1] <=> a[1]
	end
	# puts "#{a} b #{b}"
}

i = 0
counter = 1
points = 0
while true
	points += arr[i][0]
	counter += arr[i][1]
	i += 1
	counter -= 1
	break if counter == 0 || !arr[i]
end
puts points