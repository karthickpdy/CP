t = gets.to_i
t.times do 
	a = gets.chomp
	if a == a.reverse
		x = a.length.odd? ? "ODD" : "EVEN"
		puts "YES #{x}"
	else
		puts "NO"
	end

end