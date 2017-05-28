t = gets.to_i
t.times do
	n,a = gets.split(" ").map(&:to_i)
	ans = a == 0 ? "Airborne" : "Pagfloyd" 
	puts "#{ans} wins."
end