n = gets.to_i
(1..n).each { |i| 
	puts " " * (n -i) + "#" * i
}