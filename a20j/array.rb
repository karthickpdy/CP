n = gets.to_i

arr = gets.split(" ").map(&:to_i)


zero_array = arr.select{|i| i == 0}
zero_count = zero_array.length

pos_array = arr.select{|i| i > 0}
pos_count = pos_array.length

neg_count = n - zero_count - pos_count

neg_array = arr - pos_array - zero_array

if pos_count == 0
	pos_array << neg_array.pop
	pos_array << neg_array.pop
	neg_count -= 2
	pos_count += 2
end

if neg_count.even?
	zero_array << neg_array.pop
	zero_count += 1
	neg_count -= 1
end

puts "#{neg_count} #{neg_array.join(' ')}"
puts "#{pos_count} #{pos_array.join(' ')}"
puts "#{zero_count} #{zero_array.join(' ')}"