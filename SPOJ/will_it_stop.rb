n = gets.to_i
ans = true
while n > 1
	if n % 2 == 0
		n /= 2
	else
		ans = false
		break
	end

end

puts ans ? "TAK" : "NIE"

#Good - Correctness - any odd number when multiplied by 3 has 3 as one of its factors
#So at the end there will be a 3 remaining which will cause a loop and the program wont stop.
#So the given number should be divisible fully by 2 without an odd quotient which is any power of 2