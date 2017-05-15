n = gets.to_i
arr = gets.split(" ").map(&:to_i)

count = arr.length

arr.chunk{|x| x}.each do |r|
	l = r[1].length
 	if l > 1
 		count += (l-1).downto(1).inject(0,:+)
 	end
end
puts count