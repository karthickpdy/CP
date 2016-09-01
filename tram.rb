stops = gets.to_i
capacity = 0
max_capacity = 0
stops.times{
	exit,enter = gets.split(' ').map(&:to_i)
	capacity -= exit
	capacity += enter
	max_capacity = capacity if capacity >= max_capacity
}
puts max_capacity