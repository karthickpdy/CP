n,k =gets.split(" ").map(&:to_i)
tweet_open = Array.new(n,false)

k.times do |i|
	command = gets.split(" ")
	if command.length > 1
		ind = command[1].to_i - 1
		tweet_open[ind] = !tweet_open[ind]
	else
		tweet_open = Array.new(n,false)
	end
	# puts "#{tweet_open}"
	puts tweet_open.count(true)
end
