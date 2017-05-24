hash = {1 => true}
s = 1

i = 1 
while s <= 10**9
	s = 1 + i * (i+1) * 3
	i += 1
	# puts "ere"	
	hash[s] = true
end

while true
	n = gets.to_i
	break if n == -1
	# x = n - 1
	# root = Math.sqrt(x/3) 
	# puts "#{x} #{root.floor} #{root.ceil}  #{x/3}"
	# puts (x % 3 == 0 && ((root.floor != root.ceil) && (root.floor * root.ceil == (x/3))) ) ? "Y" : "N"
	puts hash[n] ? "Y" : "N"
end