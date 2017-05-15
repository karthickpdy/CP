def dist(x1,y1,x2,y2)
	Math.sqrt(((x2-x1)**2) + ((y2-y1)**2))
end

def right?(distances)
	# puts "#{distances}"
	distances.sort!
	return false if distances.any? { |e| e.round ==0  }
	(distances[0] ** 2).round + (distances[1] ** 2).round == (distances[2] ** 2).round
end

def almost?(points)
	(0..points.length-1).each do |ind|
		x1,y1,x2,y2,x3,y3 = points.map.each_with_index { |e,i| i == ind ? e + 1 : e }
		# puts x1,y1,x2,y2,x3,y3
		return true if right?([dist(x1,y1,x2,y2),dist(x1,y1,x3,y3),dist(x3,y3,x2,y2)])
		
		x1,y1,x2,y2,x3,y3 = points.map.each_with_index { |e,i| i == ind ? e - 1 : e }
		# puts x1,y1,x2,y2,x3,y3
		return true if right?([dist(x1,y1,x2,y2),dist(x1,y1,x3,y3),dist(x3,y3,x2,y2)])
	end
	return false
end

x1,y1,x2,y2,x3,y3 = gets.split(" ").map(&:to_i)
distances = [dist(x1,y1,x2,y2),dist(x1,y1,x3,y3),dist(x3,y3,x2,y2)]
distances.sort!
# puts distances
# puts "#{(distances[0] ** 2).to_i}  #{(distances[1] ** 2).to_i} #{(distances[2] ** 2).to_i}"
# puts right?(distances)
ans = "NEITHER"

if (right?(distances))
	ans = "RIGHT"
elsif almost?([x1,y1,x2,y2,x3,y3])			
	ans = "ALMOST"
end


puts ans

#Good - Nicely solved