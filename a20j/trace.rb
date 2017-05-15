n = gets.to_i
sum = 0

arr = gets.split(" ").map(&:to_i).sort
area = arr.map { |e| e * e * Math::PI }

if n.even?
	start = 1 
else
	sum += area[0]
	start = 2
end

(start..(n-1)).step(2).each do |i|
	sum += area[i] - area[i-1]
end
puts sum