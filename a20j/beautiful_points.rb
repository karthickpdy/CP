n,m = gets.split(" ").map(&:to_i)
min = [n,m].min + 1
puts min
(0...min).each do |i|
	puts "#{i} #{min - i - 1}"
end