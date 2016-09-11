t = gets.to_i
t.times do 
	n = gets.to_i
	if n %  4 == 1
		ans = "ALICE"
	else
		ans = "BOB"
	end
	puts ans
end