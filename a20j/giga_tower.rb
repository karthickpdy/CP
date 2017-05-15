n = gets.to_i
n += 1
count = 1
while n <= 8888888888 
	break if n.to_s.scan(/[8]/).length > 0
	n += 1
	count += 1
end

puts count