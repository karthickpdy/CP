t = gets.to_i
t.times do 
	n = gets.to_i
	puts ((((n * (n+1))/2)*3) - n) % 1000007
end