x1,y1,r1 = gets.split(" ").map(&:to_i)
x2,y2,r2 = gets.split(" ").map(&:to_i)

dist = Math.sqrt((x1-x2)**2 + (y1-y2)**2)
if (r1-r2).abs <= dist && dist <= (r1+r2)
	puts 0
else
	x = [dist,r1,r2].sort.reverse
	puts (x[0] - x[1] - x[2])/2
end