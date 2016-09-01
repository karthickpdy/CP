n = gets.chomp.to_i
problems = 0
n.times{
	sum = gets.split(' ').map(&:to_i).inject(0){|total,x| total + x}
	problems+=1 if sum >= 2
}
puts problems