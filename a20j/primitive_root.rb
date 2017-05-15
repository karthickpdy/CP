# def generate_prime(n)
# 	primes = {}

# 	(2..n).each do |a|
# 		primes[a] = true	
# 	end

# 	(2..Math.sqrt(n)).each do |i|
# 		if primes[i]
# 			primes[i] = true
# 			(i**2..n).step(i).each do |j|
# 				primes[j] = false
# 			end
# 		end
# 	end	
# 	primes.select {|k,v| v == true}.keys
# end
# primes = generate_prime(2000)
def gcd(a,b)
	if b == 0 
		return a
	else
		gcd(b,a%b)
	end
end

n = gets.to_i - 1
count = 0
(1..n).each do |a|
	if gcd(a,n) == 1
		count += 1 
	end

	break if a > n
end

puts count