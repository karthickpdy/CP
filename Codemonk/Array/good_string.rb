s = gets.chomp
max = 0
s.split("").chunk{|a| ['a','e','i','o','u'].include?(a)}.each do |v|
	# puts "#{v[1]}"
	max = v[1].length if v[0] && v[1].length > max
end
puts max