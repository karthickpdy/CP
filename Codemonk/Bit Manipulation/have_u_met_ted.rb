t = gets.to_i
t.times do 
	n = gets.to_i
	arr = gets.chomp.split(" ").map { |e| e.to_i.to_s(2).count('1') }
	puts "#{arr}"
	puts arr.min
end