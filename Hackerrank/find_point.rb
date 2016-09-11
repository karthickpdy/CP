t = gets.to_i
t.times do 
	x1,y1,mx,my = gets.split(" ").map(&:to_i)
	x2  = mx * 2 - x1
	y2  = my * 2 - y1
	puts "#{x2} #{y2}"
end