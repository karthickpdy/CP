n = gets.to_i
ppl_count = gets.split(" ").map(&:to_i)
arr = []
n.times do
	arr << gets.split(" ").map(&:to_i)
end

sum_arr = arr.map do |a|
	sum = a.inject(0){ |s,e| s += e * 5 }
	sum +=  a.length * 15
	sum
end
# puts "#{sum_arr}"
puts sum_arr.min