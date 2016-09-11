def dist(x1,y1,x2,y2)
	x = (x1-x2).abs ** 2
	y = (y1-y2).abs ** 2
	Math.sqrt(x+y)
end

def distance(arr)
x1,y1 = arr[0],arr[1]
x2,y2 = arr[2],arr[3]
x3,y3 = arr[4],arr[5]
return dist(x1,y1,x2,y2),dist(x1,y1,x3,y3),dist(x3,y3,x2,y2)
end

t = gets.to_i
count = 0
t.times do 
	arr = distance(gets.split(" ").map(&:to_i))
	arr.sort!
	count += 1 if (arr[0] ** 2 + arr[1] ** 2).round == (arr[2] ** 2).round
end
puts count

