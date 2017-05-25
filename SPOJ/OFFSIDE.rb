while true
	
	x,y = gets.split(" ").map(&:to_i)
	break if x == 0 && y == 0
	a = gets.split(" ").map(&:to_i).sort
	b = gets.split(" ").map(&:to_i).sort
	puts a[0] < b[1] ? "Y" : "N"

end