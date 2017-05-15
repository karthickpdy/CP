n = gets.to_i
arr = []
n.times do
	arr << gets.split(" ").map(&:to_i).sort
end
arr.each do |a|
	puts a.join(" ")
end