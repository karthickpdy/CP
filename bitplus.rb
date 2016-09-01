n = gets.to_i
x = 0
n.times{
	statement = gets.chomp
	if statement =~ /\+\+/
		x += 1
	else
		x -= 1
	end
}
puts x